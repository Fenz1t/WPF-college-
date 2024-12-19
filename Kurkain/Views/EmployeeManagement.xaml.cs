using Kurkain.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace Kurkain.Views
{
    /// <summary>
    /// Логика взаимодействия для EmployeeManagement.xaml
    /// </summary>
    public partial class EmployeeManagement : Window
    {
        public ObservableCollection<User> Users { get; set; }
        public EmployeeManagement()
        {
            InitializeComponent();
            Users = new ObservableCollection<User>();  // Инициализация коллекции
            EmployeesGrid.ItemsSource = Users; // Привязка коллекции
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AdminWindow adminWindow = new AdminWindow();
            adminWindow.Show();
            this.Close();
        }
        private void AddEmployeeButton_Click(object sender, RoutedEventArgs e)
        {
            AddEmployee addEmployee = new AddEmployee();
            addEmployee.Show();
            
        }
        public async void LoadUsers(object sender, RoutedEventArgs e)
        {
            using (var context = new KurakinContext())
            {
                // Загружаем заказы из базы данных
                var users = await context.Users.ToListAsync();

                Users.Clear();  // Очищаем коллекцию перед загрузкой новых данных
                foreach (var user in users)
                {
                    Users.Add(user);  // Добавляем пользователей в ObservableCollection
                }
            }
        }
        public async void DeleteUserButton_Click(object sender, RoutedEventArgs e)
        {
            // Получаем выбранного пользователя
            var selectedUser = EmployeesGrid.SelectedItem as User;

            if (selectedUser != null)
            {
                // Создаём новый контекст для работы с базой данных
                using (var context = new KurakinContext())
                {
                    // Ищем пользователя в базе данных по ID
                    var userToDelete = await context.Users.FindAsync(selectedUser.Id);

                    if (userToDelete != null)
                    {
                        // Удаляем пользователя из базы данных
                        context.Users.Remove(userToDelete);  // Удаляем объект, найденный через контекст
                        await context.SaveChangesAsync();    // Сохраняем изменения в базе данных
                    }

                    // Теперь удаляем пользователя из ObservableCollection, чтобы UI обновился
                    Users.Remove(selectedUser);
                }
            }
            else
            {
                MessageBox.Show("Пожалуйста, выберите сотрудника для увольнения.");
            }
        }
    }
}
