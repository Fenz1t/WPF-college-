   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	   $    Kurkain.Views.ShiftsManagement   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	   -   5          � Title$)  #Управление сменами��5	   	   $	��450��6$    � WindowStartupLocation$ CenterScreen=�61   $	��800��6V   ��5
      �� 5   
    �� 
StartPoint$	 1,0&�6    �� EndPoint$	 0,1&�6/   .��5      �  � Color$ #00BFFF��6    � Offset$ 0Q�6+   � 5      $ #4B0082��6   $ 1Q�6+   5       � 	Resources 5         DefaultButton �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  DeleteButton��%d  &	        &	 ,    �� 5   
   " ��6&   .�5      ��  � ��	 �#ADD8E66+   �� 5       � ��
	 �   �6+   �� 5       � ��
	 ���� 6,   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5        �@J�IsMouseOver$
 True��61   . �5!      ��  � ��	 �#9370DB63   �� 5"       � ��
	 �����63   �� 5#       � ��	 �#9370DB64   5$      5&      �� 5'   
   " ��6%   .�5(      ��  � ��	 �#ADD8E66+   �� 5)       � ��
	 �   �6+   �� 5*       � ��
	 ���� 6,   �� 5+       � ��	 5-      �� 5.      "
 ��6&   .R�5/      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�50      �� $��Center=�6/   $��Center=�6L   51      52      54       55      P� 56       �@J�IsMouseOver$
 True��61   . �57      ��  � ��
	 �Gc��63   �� 58       � ��
	 �����63   �� 59       � ��
	 �Gc��64   5:      5<      5=      .��5>      �  � RowDefinitions 5?   
   �� 5@      $��* �6   �� 5A      $	��200 �6    � ColumnDefinitions 5D   
   .+�5F   
   �� $��1q�6   $��0��6%   $��0,0,0,0q�62   ._�5G      &   System.Windows.Controls.DataGrid  -   5        $��
shiftsGrid��5G         
IsReadOnly$ False��6)      AutoGenerateColumns$ False��6e   $��Stretch=�5H      $��Stretch=�6#   $
��Bold"�6?      CanUserAddRows$ False��5I         Columns 5J      0  *System.Windows.Controls.DataGridTextColumn  5K      ,  &System.Windows.Controls.DataGridColumn   Header$ id��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *Id+6L     5L      $ Start Shift��6)   $ * 6]    6>   �� *
StartShift+6]     5M      $ 	End Shift��6)   $ * 6Y    6<   �� *
EndShift+6Y     5N      $ Status��6)   $ * 6Y    69   �� *StatusShift+6Y   ��5P      �� 5Q      $	 1,0&�6*   $	 0,1&�6;   .��5R      � $ #00BFFF��6'   $ 0Q�67   � 5S      $ #4B0082��6'   $ 1Q�67   5T         ColumnHeaderStyle 5V      �� 5X      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5Y      ��  � ��	 �#ADD8E667   �� 5Z       � ��
	 �   �67   �� 5[       � ��$	 Center=�6G   �� 5\       � ��$	 Center=�6>   �� 5]       � ��
	 �   �68   �� 5^       � ��$	 0,0,1,0q�6<   5`         RowStyle 5b      �� 5c      )  #System.Windows.Controls.DataGridRow"  6   .�5d      ��  � ��	 �#007CA667   �� 5e       � ��
	 �����67   5g       5k      ��%    5m      5n      5p      �� 5r   
   $��1��6   .+�5t      �� -   5        #��[  5t      $*��$Создать новую смену��6S   $��Center=�6q   $
��Bold"�6�   $��0,40,0,0q�6�   $	��250��6�   $��50��6�   6�   �� 5u      -   5        #��[  5u      $.��(Обновить таблицу смен��6O   $��Center=�6o   $
��Bold"�6�   $��0,10,0,0q�6�   $	��250��6�   $��50��6�   6�   5v      5x      5y      