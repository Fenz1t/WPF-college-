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
  
    public partial class AddShift : Window
    {
        public ObservableCollection<User> Users { get; set; }

        public AddShift()
        {
            InitializeComponent();
            Users = new ObservableCollection<User>(); 
            EmployeesDataGrid.ItemsSource = Users; 
        }

        
        public async void LoadUsers(object sender, RoutedEventArgs e)
        {
            
            using (var context = new KurakinContext())
            {
                
                var users = await context.Users.ToListAsync();

                Users.Clear();  
                foreach (var user in users)
                {
                    Users.Add(user);  
                }
            }
        }

        // Метод для обработки кнопки "Add Shift"
        private void AddShiftButton_Click(object sender, RoutedEventArgs e)
        {
           
            var startDate = StartDatePicker.SelectedDate ?? DateTime.Now;
            var endDate = EndDatePicker.SelectedDate ?? DateTime.Now;

          
            int startHour = int.Parse(StartHourComboBox.SelectedItem.ToString() ?? "0");
            int startMinute = int.Parse(StartMinuteComboBox.SelectedItem.ToString() ?? "0");

            int endHour = int.Parse(EndHourComboBox.SelectedItem.ToString() ?? "0");
            int endMinute = int.Parse(EndMinuteComboBox.SelectedItem.ToString() ?? "0");

           
            startDate = new DateTime(startDate.Year, startDate.Month, startDate.Day, startHour, startMinute, 0);
            endDate = new DateTime(endDate.Year, endDate.Month, endDate.Day, endHour, endMinute, 0);

          
            var shift = new Shift
            {
                StartShift = startDate,
                EndShift = endDate,
                StatusShift = "Active"
            };

            
            using (var context = new KurakinContext())
            {
                context.Shifts.Add(shift);
                context.SaveChanges(); 
            }

            var selectedUsers = EmployeesDataGrid.SelectedItems.Cast<User>().ToList();

            
            using (var context = new KurakinContext())
            {
                foreach (var user in selectedUsers)
                {
                    var shiftUser = new ShiftUser
                    {
                        ShiftId = shift.Id,
                        UserId = user.Id
                    };
                    context.ShiftUsers.Add(shiftUser);  
                }

                context.SaveChanges();  
            }

            MessageBox.Show("Смена успешно добавлена!");
        }


    }
}
