   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	       Kurkain.Views.CookWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	     � Title$  Окно повара��5   	   $	��500��6   $	��365��6*    � WindowStartupLocation$ CenterScreen=�67   ��5	      �� 5
   
    �� 
StartPoint$	 1,0&�6    �� EndPoint$	 0,1&�6/   .��5      �  � Color$ #00BFFF��6    � Offset$ 0Q�6+   � 5      $ #4B0082��6   $ 1Q�6+   5       � 	Resources 5         DefaultButton �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  DeleteButton��%n  &	        &	 0    �� 5   
   " ��6&   .�5      ��  � ��	 �#ADD8E66+   �� 5       � ��
	 �   �6+   �� 5       � ��
	 ���� 6,   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5        �@J�IsMouseOver$
 True��61   . �5!      ��  � ��	 �	#FF7773F563   �� 5"       � ��	 �	#FF7773F564   �� 5#       � ��
	 �����63   5$      5&      �� 5'   
   " ��6%   .�5(      ��  � ��	 �#FFA2406+   �� 5)       � ��
	 �����6+   �� 5*       � ��	 �	#FF7773F56,   �� 5+       � ��	 5-      �� 5.      "
 ��6&   .R�5/      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�50      �� $��Center=�6/   $��Center=�6L   51      52      54       55      P� 56       �@J�IsMouseOver$
 True��61   . �57      ��  � ��
	 �  ��63   �� 58       � ��
	 �����63   �� 59       � ��
	 �  ��64   5:      5<      5=      .��5>      � .+�5@   
   �  � RowDefinitions 5A      �� 5B      $��* �6    �� 5C      $��80 �6     � ColumnDefinitions 5F      .+�5J      �� $��1q�6   $��0��6)   $��0,0,0,0q�66   ._�5K      &   System.Windows.Controls.DataGrid  -   5          Name$ EmployeesGrid��5K         AutoGenerateColumns$
 True��6]   $��Stretch=�5L      $��Stretch=�6&   $
��Bold"�6B      CanUserAddRows$ False��5M      ��5N      �� 5O      $	 1,0&�6.   $	 0,1&�6?   .��5P      � $ #00BFFF��6+   $ 0Q�6;   � 5Q      $ #4B0082��6+   $ 1Q�6;   5R         ColumnHeaderStyle 5T      �� 5U      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5V      ��  � ��	 �#ADD8E66;   �� 5W       � ��
	 �   �6;   �� 5X       � ��$	 Center=�6K   �� 5Y       � ��$	 Center=�6B   5Z         RowStyle 5\      �� 5]      )  #System.Windows.Controls.DataGridRow"  6    .�5^      ��  � ��	 �#007CA66;   �� 5_       � ��
	 �����6;   5`      5b      5d      �� 5g      $��1��6   $��Center=�6&   $��Center=�6B   .+�5h      �� #��[  6   $	��250��6@   $��45��6O   $��Кнопка��6^   $
��Bold"�6o   5j      5m      5p      5q      5r      