   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	   &     Kurkain.Views.EmployeeManagement   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	   -   5          � Title$3  -Управление Сотрудниками��5	   	   $	��500��6)   $	��365��66    � WindowStartupLocation$ CenterScreen=�6B   ��5
      �� 5   
    �� 
StartPoint$	 1,0&�6    �� EndPoint$	 0,1&�6/   .��5      �  � Color$ #00BFFF��6    � Offset$ 0Q�6+   � 5      $ #4B0082��6   $ 1Q�6+   5       � 	Resources 5         DefaultButton �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value��%6  &	        �� 5   
   " ��6&   .�5      ��  � ��	 �#ADD8E66+   �� 5       � ��
	 �   �6+   �� 5       � ��
	 ���� 6,   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5        �@J�IsMouseOver$
 True��61   . �5!      ��  � ��	 �#9370DB63   �� 5"       � ��
	 �����63   �� 5#       � ��	 �#9370DB64   5$      5&      5'      .��5)      �  � RowDefinitions 5*   
   �� 5+      $��* �6   �� 5,      $	��200 �6    � ColumnDefinitions 5/   
   .+�53   
   �� $��1q�6   $��0��6%   $��0,0,0,0q�62   ._�54      &   System.Windows.Controls.DataGrid  -   5          Name$ EmployeesGrid��54         AutoGenerateColumns$ False��6Y   $��Stretch=�55      $��Stretch=�6)   $
��Bold"�6E      CanUserAddRows$ False��56         Columns 57      0  *System.Windows.Controls.DataGridTextColumn  58      ,  &System.Windows.Controls.DataGridColumn   Header$ id��6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *Id+6N     59      $
 Name��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6P    67   �� *Name+6]     5:      $ Surname��6)   $ * 6V    6:   �� *	Surname+6b     5;      $ role_id��6)   $ * 6U    6:   �� *RoleId+6a     5<      $ Status��6)   $ * 6T    69   �� *Status+6`     5=      $ Login��6)   $ * 6R    68   �� *Login+6^     5>      $ Password��6)   $ * 6X    6;   �� *
Password+6d   ��5@      �� 5A      $	 1,0&�6*   $	 0,1&�6;   .��5B      � $ #00BFFF��6'   $ 0Q�67   � 5C      $ #4B0082��6'   $ 1Q�67   5D         ColumnHeaderStyle 5F      �� 5G      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5H      ��  � ��	 �#ADD8E667   �� 5I       � ��
	 �   �67   �� 5J       � ��$	 Center=�6G   �� 5K       � ��$	 Center=�6>   5M         RowStyle 5O      �� 5P      )  #System.Windows.Controls.DataGridRow"  6   .�5Q      ��  � ��	 �#007CA667   �� 5R       � ��
	 �����67   5S      5U      5W      �� 5Z   
   $��1��6   $��Center=�6"   $��Center=�6>   .+�5[      �� -   5        #��[  5[      $	��250��6[   $��35��6j   $>��8Уволить выбранного сотрудника��6y   $
��Bold"�6�   5]      �� 5^      -   5        #��[  5^      $8��2Добавить нового сотрудника��6<   $	��250��6�   $��35��6�   $
��Bold"�6�   $��0,10,0,0q�6�   5`      �� 5a      -   5        #��[  5a      $A��;Обновить таблицу с сотрудниками��6N   $	��250��6x   $��35��6�   $
��Bold"�6�   $��0,10,0,0q�6�   5c      �� 5e      -   5        #��[  5e      $��
Назад��6R   $	��250��6b   $��35��6q   $
��Bold"�6�   $��0,10,0,0q�6�   5g      5i      5l      5m      