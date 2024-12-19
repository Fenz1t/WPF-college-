using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Kurkain.Models;
using Microsoft.EntityFrameworkCore;

namespace Kurkain.Views
{
    /// <summary>
    /// Interaction logic for CookWindow.xaml
    /// </summary>
    public partial class CookWindow : Window
    {
        public ObservableCollection<Order> Orders { get; set; }

        public CookWindow()
        {
            InitializeComponent();
            Orders = new ObservableCollection<Order>();  // Инициализация коллекции
            EmployeesGrid.ItemsSource = Orders; // Привязка коллекции
        }

        private async void DataGrid_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            var editedOrder = e.Row.Item as Order;

            if (editedOrder != null)
            {
                using (var context = new KurakinContext())
                {
                    // Находим существующий заказ в базе данных по ID
                    var orderToUpdate = await context.Orders
                        .FirstOrDefaultAsync(o => o.Id == editedOrder.Id);

                    if (orderToUpdate != null)
                    {
                        // Обновляем поля
                        orderToUpdate.Status = editedOrder.Status;
                        orderToUpdate.Place = editedOrder.Place;
                        orderToUpdate.CountPerson = editedOrder.CountPerson;
                        // Прочие поля, которые могут быть обновлены

                        await context.SaveChangesAsync();  // Сохраняем изменения в базе данных
                    }
                }
            }
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

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            AddOrder addOrder = new AddOrder();
            addOrder.Show();
        }
    }
}
