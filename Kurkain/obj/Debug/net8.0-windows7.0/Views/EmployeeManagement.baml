   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	   &     Kurkain.Views.EmployeeManagement   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	     � Title$3  -Управление Сотрудниками��5   	   $	��500��6)   $	��365��66    � WindowStartupLocation$ CenterScreen=�6B   ��5	      �� 5
   
    �� 
StartPoint$	 1,0&�6    �� EndPoint$	 0,1&�6/   .��5      �  � Color$ #00BFFF��6    � Offset$ 0Q�6+   � 5      $ #4B0082��6   $ 1Q�6+   5       � 	Resources 5         DefaultButton �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value��%6  &	        �� 5   
   " ��6&   .�5      ��  � ��	 �#ADD8E66+   �� 5       � ��
	 �   �6+   �� 5       � ��
	 ���� 6,   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5       �@J�IsMouseOver$
 True��61   . �5       ��  � ��	 �#9370DB63   �� 5!       � ��
	 �����63   �� 5"       � ��	 �#9370DB64   5#      5%      5&      .��5(      �  � RowDefinitions 5)   
   �� 5*      $��* �6   �� 5+      $	��150 �6    � ColumnDefinitions 5.   
   .+�52   
   �� $��1q�6   $��0��6%   $��0,0,0,0q�62   ._�53      &   System.Windows.Controls.DataGrid  -   5          Name$ EmployeesGrid��53         AutoGenerateColumns$
 True��6Y   $��Stretch=�54      $��Stretch=�6)   $
��Bold"�6E      CanUserAddRows$ False��55      ��56      �� 57      $	 1,0&�6*   $	 0,1&�6;   .��58      � $ #00BFFF��6'   $ 0Q�67   � 59      $ #4B0082��6'   $ 1Q�67   5:         ColumnHeaderStyle 5<      �� 5=      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5>      ��  � ��	 �#ADD8E667   �� 5?       � ��
	 �   �67   �� 5@       � ��$	 Center=�6G   �� 5A       � ��$	 Center=�6>   5C         RowStyle 5E      �� 5F      )  #System.Windows.Controls.DataGridRow"  6   .�5G      ��  � ��	 �#007CA667   �� 5H       � ��
	 �����67   5I      5K      5M      �� 5P   
   $��1��6   $��Center=�6"   $��Center=�6>   .+�5Q      �� #��[  6   $	��250��6<   $��35��6K   $>��8Уволить выбранного сотрудника��6Z   $
��Bold"�6�   5S      �� 5T      -   5        #��[  5T      $8��2Добавить нового сотрудника��6<   $	��250��6�   $��35��6�   $
��Bold"�6�   $��0,10,0,0q�6�   5V      �� 5W      -   5        #��[  5W      $��
Назад��6R   $	��250��6b   $��35��6q   $
��Bold"�6�   $��0,10,0,0q�6�   5Y      5[      5^      5_      