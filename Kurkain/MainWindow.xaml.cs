using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Kurkain.Models;
using Kurkain.Views;
using Microsoft.EntityFrameworkCore;

namespace Kurkain
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            string username = UsernameTextBox.Text;
            string password = PasswordTextBox.Password;

            using (var context = new KurakinContext())
            {
                var user = context.Users.Include(u => u.Role).FirstOrDefault(u=>u.Login == username && u.Password == password);
                if (user != null)
                {
                    string rolename = user.Role.Name;
                    switch (rolename)
                    {
                        case "Admin":
                            NavigateToWindow(new AdminWindow());
                            break;
                        case "Waiter":
                            NavigateToWindow(new WaiterWindow());
                            break;
                        case "Chef":
                            NavigateToWindow(new CookWindow());
                            break;

                    }
                }
                else 
                {
                    MessageBox.Show("Неверный логин или пароль");
                }
            }
        }
        private void NavigateToWindow(Window window)
        {
            window.Show();
            Close();
        }
    }
}