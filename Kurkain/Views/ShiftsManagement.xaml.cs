using Kurkain.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Globalization;
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
    /// Логика взаимодействия для ShiftsManagement.xaml
    /// </summary>
    public partial class ShiftsManagement : Window
    {
        public ObservableCollection<Shift> Shifts { get; set; }

        public ShiftsManagement()
        {
            InitializeComponent();
            Shifts = new ObservableCollection<Shift>(); // Инициализация коллекции смен
            shiftsGrid.ItemsSource = Shifts; // Привязка коллекции к DataGrid
        }

        // Метод для загрузки смен из базы данных
        public async void LoadShifts(object sender, RoutedEventArgs e)
        {
            using (var context = new KurakinContext())
            {
                var shifts = await context.Shifts.ToListAsync(); // Загружаем все смены из базы данных

                Shifts.Clear();  // Очищаем коллекцию перед добавлением новых данных
                foreach (var shift in shifts)
                {
                    Shifts.Add(shift); // Добавляем каждую смену в коллекцию
                }
            }
        }

        // Метод для удаления выбранной смены(Удаление из двух таблиц нужно переделывать)
        //private void DeleteShiftButton_Click(object sender, RoutedEventArgs e)
        //{
        //    var selectedShift = shiftsGrid.SelectedItem as Shift;

        //    if (selectedShift != null)
        //    {
        //        using (var context = new KurakinContext())
        //        {
        //            var shift = context.Shifts.FirstOrDefault(s => s.Id == selectedShift.Id);
        //            if (shift != null)
        //            {
        //                context.Shifts.Remove(shift);
        //                context.SaveChanges();

        //                Shifts.Remove(selectedShift);
        //                MessageBox.Show("Смена успешно удалена.");
        //            }
        //            else
        //            {
        //                MessageBox.Show("Ошибка: смена не найдена.");
        //            }
        //        }
        //    }
        //    else
        //    {
        //        MessageBox.Show("Пожалуйста, выберите смену для удаления.");
        //    }
        //}
        private async void ShiftsGrid_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            var editedShift = e.Row.Item as Shift;

            if (editedShift != null)
            {
                using (var context = new KurakinContext())
                {
                    // Проверяем, существует ли смена с таким Id в базе данных
                    var shiftToUpdate = await context.Shifts.FirstOrDefaultAsync(s => s.Id == editedShift.Id);

                    if (shiftToUpdate != null)
                    {
                        // Обновляем свойства смены
                        shiftToUpdate.StartShift = editedShift.StartShift;
                        shiftToUpdate.EndShift = editedShift.EndShift;
                        shiftToUpdate.StatusShift = editedShift.StatusShift;

                        // Сохраняем изменения в базе данных
                       await context.SaveChangesAsync();


                        MessageBox.Show("Смена успешно обновлена!");
                    }
                    else
                    {
                        MessageBox.Show("Ошибка: смена не найдена.");
                    }
                }
            }
        }

        private void AddShift_click(object sender, RoutedEventArgs e) 
        {

            AddShift AddShift = new AddShift();
            AddShift.Show();

        }







    };
}