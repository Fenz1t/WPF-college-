using System;
using System.Collections.Generic;
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
        List<Orders> orders = new List<Orders>();

        public ShiftsManagement()
        {
            //InitializeComponent();
            //orders.Add(new Orders { shiftid = 13, startdate = new DateTime(2024, 10, 1), enddate = new DateTime(2024, 11, 1), isactive = true, employeesinfo = "офик(Официант), повар(Повар)" });
            //shiftsGrid.ItemsSource = orders;


        }

        class Orders
        {
            //public int shiftid { get; set; }
            //public DateTime startdate { get; set; }
            //public DateTime enddate { get; set; }
            //public bool isactive { get; set; }
            //public string employeesinfo { get; set; }

         

        }

     






    };
        }

        
       
            


        
       
    
    



