   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	        Kurkain.Views.WaiterWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	   -   5          � Title$!  Окно официанта��5	   	   $	��500��6    $	��400��6-    � WindowStartupLocation$ CenterScreen=�6:   ��5
      �� 5   
    �� 
StartPoint$	 1,0&�6    �� EndPoint$	 0,1&�6/   .��5      �  � Color$ #00BFFF��6    � Offset$ 0Q�6+   � 5      $ #4B0082��6   $ 1Q�6+   5       � 	Resources 5         DefaultButton �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  DeleteButton��%p  &	        &	 2    �� 5   
   " ��6&   .�5      ��  � ��	 �#ADD8E66+   �� 5       � ��
	 �   �6+   �� 5       � ��	 �	#FF7773F56,   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5        �@J�IsMouseOver$
 True��61   . �5!      ��  � ��	 �#9370DB63   �� 5"       � ��
	 �����63   �� 5#       � ��	 �#9370DB64   5$      5&      �� 5'   
   " ��6%   .�5(      ��  � ��	 �#FFA2406+   �� 5)       � ��
	 �����6+   �� 5*       � ��	 �	#FF7773F56,   �� 5+       � ��	 5-      �� 5.      "
 ��6&   .R�5/      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�50      �� $��Center=�6/   $��Center=�6L   51      52      54       55      P� 56       �@J�IsMouseOver$
 True��61   . �57      ��  � ��
	 �  ��63   �� 58       � ��
	 �����63   �� 59       � ��
	 �  ��64   5:      5<      5=      .��5>      � .+�5@   
   �  � RowDefinitions 5A      �� 5B      $��* �6    �� 5C      $	��120 �6     � ColumnDefinitions 5F      .+�5J      �� $��1q�6   $��0��6)   $��0,0,0,0q�66   ._�5K      &   System.Windows.Controls.DataGrid  -   5          Name$ 
OrdersGrid��5K         AutoGenerateColumns$ False��6Z   $��Stretch=�5L      $��Stretch=�6&   $
��Bold"�6B      CanUserAddRows$ False��5M         Columns 5N      0  *System.Windows.Controls.DataGridTextColumn  5O      ,  &System.Windows.Controls.DataGridColumn   Header$ id��6-   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *Id+6R     5P      $
 Date��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6T    6;   �� *Date+6a     5Q      $ Status��6-   $ * 6X    6=   �� *Status+6d     5R      $ UserId��6-   $ * 6X    6=   �� *UserId+6d     5S      $ Place��6-   $ * 6V    6<   �� *Place+6b     5T      $ CountPerson��6-   $ * 6b    6B   �� *CountPerson+6n   ��5V      �� 5W      $	 1,0&�6.   $	 0,1&�6?   .��5X      � $ #00BFFF��6+   $ 0Q�6;   � 5Y      $ #4B0082��6+   $ 1Q�6;   5Z         ColumnHeaderStyle 5\      �� 5]      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5^      ��  � ��	 �#ADD8E66;   �� 5_       � ��
	 �   �6;   �� 5`       � ��$	 Center=�6K   �� 5a       � ��$	 Center=�6B   5b         RowStyle 5d      �� 5e      )  #System.Windows.Controls.DataGridRow"  6    .�5f      ��  � ��	 �#007CA66;   �� 5g       � ��
	 �����6;   5h      5j      5l      �� 5o      $��1��6   $��Center=�6&   $��Center=�6B   .+�5p      �� -   5        #��[  5p      $	��250��6U   $��45��6d   $,��&Добавить новый заказ��6s   $
��Bold"�6�   5r      �� 5t      -   5        #��[  5t      $	��250��6S   $��45��6b   $��0,10,0,0q�6q   $9��3Обновить таблицу с заказами��6�   $
��Bold"�6�   5v      5x      5{      5|      5}      