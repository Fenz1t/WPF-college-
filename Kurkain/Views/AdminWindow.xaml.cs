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
    /// Логика взаимодействия для AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        public AdminWindow()
        {
            InitializeComponent();
        }
        // Навигация для админа
        public void EmployeeButton_Click(object sender, RoutedEventArgs e) 
        { 
            EmployeeManagement employeeManagement = new EmployeeManagement();
            employeeManagement.Show();
            this.Close();

        }
        public void OrderButton_Click(object sender, RoutedEventArgs e) 
        { 
            OrdersManagement ordersManagement = new OrdersManagement();
            ordersManagement.Show();
            this.Close();
        }
        public void ShiftManagement_Click(object sender, RoutedEventArgs e)
        {
            ShiftsManagement shiftManagement = new ShiftsManagement();
            shiftManagement.Show();
        }
        public void ExitButton_Click(object sender, RoutedEventArgs e) 
        { 
            this.Close();
        }

    }
}
