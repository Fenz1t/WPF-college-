   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	       Kurkain.OrdersManagement   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	     � Title$+  %Управление заказами��5   	   $	��500��6%   $	��365��62    � WindowStartupLocation$ CenterScreen=�6>   ��5	      �� 5
   
    �� EndPoint$ 0.7,0&�6    �� 
StartPoint$ 0.7,6&�6/   .��5      �  � Color$ #00BFFF��6    � Offset$ 2Q�6+   � 5      $ #00BFFF��6   $ 1Q�6+   � 5      $ #00BFFF��6   $ 0Q�6+   5       � 	Resources 5         DefaultButton �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  DeleteButton��%"  &	        &	 �    �� 5   
   " ��6&   .�5      ��  � ��	 �#FFA2406+   �� 5       � ��
	 �����6+   �� 5       � ��	 �	#FF7773F56,   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5        �@J�IsMouseOver$
 True��61   . �5!      ��  � ��	 �	#FF281B6563   5"      5$      �� 5%   
   " ��6%   .�5&      ��  � ��	 �#FFA2406+   �� 5'       � ��
	 �����6+   �� 5(       � ��	 �	#FF7773F56,   �� 5)       � ��	 5+      �� 5,      "
 ��6&   .R�5-      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5.      �� $��Center=�6/   $��Center=�6L   5/      50      52       53      P� 54       �@J�IsMouseOver$
 True��61   . �55      ��  � ��
	 �  ��63   �� 56       � ��
	 �����63   �� 57       � ��
	 �  ��64   58      5:      5;      .��5<      � .+�5>   
   �  � RowDefinitions 5?      �� 5@      $��* �6    �� 5A      $	��150 �6     � ColumnDefinitions 5D      .+�5H      �� $��1q�6   $��0��6)   $��0,0,0,0q�66   ._�5I      &   System.Windows.Controls.DataGrid  -   5          Name$ EmployeesGrid��5I         AutoGenerateColumns$
 True��6]   $��Stretch=�5J      $��Stretch=�6&   $
��Bold"�6B      CanUserAddRows$ False��5K      ���#007CA6   ColumnHeaderStyle 5L      �� 5M      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5N      ��  � ��	 �#A675006;   �� 5O       � ��
	 �����6;   �� 5P       � ��$	 Center=�6K   �� 5Q       � ��$	 Center=�6B   5R         RowStyle 5T      �� 5U      )  #System.Windows.Controls.DataGridRow"  6    .�5V      ��  � ��	 �#007CA66;   �� 5W       � ��
	 �����6;   5X      5Z      5\      �� 5_      $��1��6   $��Center=�6&   $��Center=�6B   .+�5`      �� #��[ 6   $	��250��6?   $��35��6N   $2��,Удалить выбранный заказ��6]   $
��Bold"�6   5b      �� 5c      #��[  6   $,��&Добавить новый заказ��6@   $	��250��6_   $��35��6n   $
��Bold"�6~   $��0,10,0,0q�6�   5e      �� 5f      -   5        #��[  5f      $��
Назад��6V   $	��250��6f   $��35��6u   $
��Bold"�6�   $��0,10,0,0q�6�   5h      5j      5m      5n      5o      