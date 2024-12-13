using Kurkain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Microsoft.EntityFrameworkCore;

namespace Kurkain.Views
{
    /// <summary>
    /// Interaction logic for AddEmployee.xaml
    /// </summary>
    public partial class AddEmployee : Window
    {
        public AddEmployee()
        {
            InitializeComponent();
        }

        private void AddEmployeeButton_click(object sender, RoutedEventArgs e)
        {
            // Получаем значения из интерфейса
            string name = UsernameTextBox.Text;
            string surname = SurnameTextBox.Text;  // Добавьте соответствующее поле в интерфейс
            string login = LoginTextBox.Text;
            string password = PasswordTextBox.Password;
            string status = "worked"; // Здесь можно добавить логику для выбора статуса
                                      // Получаем строку, выбранную в ComboBox
            string selectedRole = (RoleTextBox.SelectedItem as ComboBoxItem)?.Content.ToString();

            // Инициализируем переменную для roleId
            int roleId = 0;

            // Сопоставляем выбранную роль с соответствующим roleId
            if (selectedRole == "Chef")
            {
                roleId = 1; // Предположим, что "Chef" соответствует ID 1
            }
            else if (selectedRole == "Waiter")
            {
                roleId = 2; // Предположим, что "Waiter" соответствует ID 2
            }
            else if (selectedRole == "Admin")
            {
                roleId = 3; // Предположим, что "Admin" соответствует ID 3
            }

            // Проверяем, что roleId корректен
            if (roleId == 0)
            {
                MessageBox.Show("Выберите корректную роль.");
                return;
            }

            try
            {
                using (var context = new KurakinContext())
                {
                    var existingUser = context.Users.FirstOrDefault(u => u.Login == login);
                    if (existingUser != null)
                    {
                        MessageBox.Show("Пользователь с таким логином уже существует.");
                        return;
                    }
                    var newUser = new User
                    {
                        Name = name,
                        Surname = surname,
                        RoleId = roleId,
                        Status = status,
                        Login = login,
                        Password = password,
                                
                    };
                    context.Users.Add(newUser);

                    context.SaveChanges();

                    MessageBox.Show($"Сотрудник: {name} , успешно добавлен");
                }
            }

            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка:{ex.Message}");
                if (ex.InnerException != null)
                {
                    MessageBox.Show($"Внутреннее исключение: {ex.InnerException.Message}");
                }
            }

        }
        private void Window_Loaded(object sender, RoutedEventArgs e) 
        {

            using (var context = new KurakinContext())
            {
                // Загружаем роли из базы данных
                var roles = context.Roles.ToList();

                // Привязываем роли к ComboBox
                foreach (var role in roles)
                {
                    ComboBoxItem item = new ComboBoxItem
                    {
                        Content = role.Name,
                        Tag = role.Id // Сохраняем id роли в качестве тега
                    };

                    RoleTextBox.Items.Add(item);
                }
            }

        }
    }
}
