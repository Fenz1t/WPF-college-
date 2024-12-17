using Kurkain.Models;
using Microsoft.VisualBasic.Logging;
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

namespace Kurkain.Views
{
    /// <summary>
    /// Логика взаимодействия для AddOrder.xaml
    /// </summary>
    public partial class AddOrder : Window
    {
        public AddOrder()
        {
            InitializeComponent();
        }
        private void AddOrderButton_click(object sender, RoutedEventArgs e) 
        {
                    // Проверка на null для статус, повара и стола
            if (StatusTextBox.SelectedItem == null)
            {
                MessageBox.Show("Пожалуйста, выберите статус.");
                return;
            }

            var statusItem = StatusTextBox.SelectedItem as ComboBoxItem;
            string status = statusItem?.Content?.ToString();

            if (string.IsNullOrEmpty(status))
            {
                MessageBox.Show("Пожалуйста, выберите корректный статус.");
                return;
            }
            if (ChefTextBox.SelectedItem == null)
            {
                MessageBox.Show("Пожалуйста, выберите повара.");
                return;
            }
            string chef = ChefTextBox.SelectedItem.ToString();

            if (PlaceTextBox.SelectedItem == null)
            {
                MessageBox.Show("Пожалуйста, выберите стол.");
                return;
            }
            var placeItem = PlaceTextBox.SelectedItem as ComboBoxItem;
            string place = placeItem?.Content?.ToString();
            if (string.IsNullOrEmpty(status))
            {
                MessageBox.Show("Пожалуйста, выберите корректный статус.");
                return;
            }
            int clientsCount = 0;

            if (!int.TryParse(CountClientsTextBox.Text, out clientsCount))
            {
                MessageBox.Show("Пожалуйста, введите корректное количество клиентов.");
                return;
            }
            try
            {
                using (var context = new KurakinContext())
                {
                    var selectedChef = context.Users.FirstOrDefault(u => u.Name == chef);
                    var newOrder = new Order
                    {
                        Status = status,
                        UserId = selectedChef.Id,
                        Place = place,
                        CountPerson = clientsCount,

                    };
                    context.Orders.Add(newOrder);

                    context.SaveChanges();

                    MessageBox.Show($"Заказ успешно добавлен");
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
        private void Window_Loaded_Cooks(object sender, RoutedEventArgs e)
        {
            using (var context = new KurakinContext()) 
            {

                var chefs = context.Users.Where(u => u.Role.Name == "Chef" || u.RoleId == 3).ToList();

                foreach (var chef in chefs)
                {
                    ChefTextBox.Items.Add(chef.Name);
                }

            }



        }

    }
}
