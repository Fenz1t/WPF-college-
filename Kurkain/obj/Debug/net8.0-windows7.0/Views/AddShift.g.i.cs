﻿#pragma checksum "..\..\..\..\Views\AddShift.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "2735A6B16549AFBD062E3BE40FC297671FE6D467"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Kurkain;
using Microsoft.Windows.Themes;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Kurkain.Views {
    
    
    /// <summary>
    /// AddShift
    /// </summary>
    public partial class AddShift : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 335 "..\..\..\..\Views\AddShift.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker StartDatePicker;
        
        #line default
        #line hidden
        
        
        #line 336 "..\..\..\..\Views\AddShift.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox StartHourComboBox;
        
        #line default
        #line hidden
        
        
        #line 367 "..\..\..\..\Views\AddShift.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox StartMinuteComboBox;
        
        #line default
        #line hidden
        
        
        #line 436 "..\..\..\..\Views\AddShift.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker EndDatePicker;
        
        #line default
        #line hidden
        
        
        #line 437 "..\..\..\..\Views\AddShift.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox EndHourComboBox;
        
        #line default
        #line hidden
        
        
        #line 468 "..\..\..\..\Views\AddShift.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox EndMinuteComboBox;
        
        #line default
        #line hidden
        
        
        #line 538 "..\..\..\..\Views\AddShift.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid EmployeesDataGrid;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.2.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Kurkain;component/views/addshift.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Views\AddShift.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.2.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 9 "..\..\..\..\Views\AddShift.xaml"
            ((Kurkain.Views.AddShift)(target)).Loaded += new System.Windows.RoutedEventHandler(this.LoadUsers);
            
            #line default
            #line hidden
            return;
            case 2:
            this.StartDatePicker = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 3:
            this.StartHourComboBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 4:
            this.StartMinuteComboBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 5:
            this.EndDatePicker = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 6:
            this.EndHourComboBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 7:
            this.EndMinuteComboBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 8:
            this.EmployeesDataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 9:
            
            #line 568 "..\..\..\..\Views\AddShift.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.AddShiftButton_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

