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
    /// Логика взаимодействия для OrdersManagement.xaml
    /// </summary>
    public partial class OrdersManagement : Window
    {
        public ObservableCollection<Order> Orders { get; set; }
        public OrdersManagement()
        {
            InitializeComponent();
            Orders = new ObservableCollection<Order>();  // Инициализация коллекции
            OrdersGrid.ItemsSource = Orders; // Привязка коллекции
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AdminWindow adminWindow = new AdminWindow();
            adminWindow.Show();
            this.Close();
        }
        public async void LoadOrders(object sender, RoutedEventArgs e)
        {
            using (var context = new KurakinContext())
            {
                // Загружаем заказы из базы данных
                var orders = await context.Orders.ToListAsync();

                Orders.Clear();  // Очищаем коллекцию перед загрузкой новых данных
                foreach (var order in orders)
                {
                    Orders.Add(order);  // Добавляем заказы в ObservableCollection
                }
            }
        }
        public async void DeleteOrderButton_Click(object sender, RoutedEventArgs e)
        {
            // Получаем выбранный заказ
            var selectedOrder = OrdersGrid.SelectedItem as Order;

            if (selectedOrder != null)
            {
                // Удаляем заказ из ObservableCollection
                Orders.Remove(selectedOrder);

                using (var context = new KurakinContext())
                {
                    // Удаляем заказ из базы данных
                    var orderToDelete = await context.Orders.FindAsync(selectedOrder.Id);
                    if (orderToDelete != null)
                    {
                        context.Orders.Remove(orderToDelete);  // Удаляем заказ из базы
                        await context.SaveChangesAsync();      // Сохраняем изменения в базе данных
                    }
                }
            }
            else
            {
                MessageBox.Show("Пожалуйста, выберите заказ для удаления.");
            }
        }
        private void OpenOrder_Click(object sender, RoutedEventArgs e)
        {
            AddOrder addOrder = new AddOrder();
            addOrder.Show();
        }
    }
}
