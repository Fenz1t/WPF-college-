   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	       Kurkain.ShiftsManagement   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	     � Title$)  #Управление сменами��5   	   $	��450��6$    � WindowStartupLocation$ CenterScreen=�61   $	��800��6V   ��5	      �� 5
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
   " ��6%   .�5&      ��  � ��	 �#3821A06+   �� 5'       � ��
	 �����6+   �� 5(       � ��	 �	#FF7773F56,   �� 5)       � ��	 5+      �� 5,      "
 ��6&   .R�5-      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5.      �� $��Center=�6/   $��Center=�6L   5/      50      52       53      P� 54       �@J�IsMouseOver$
 True��61   . �55      ��  � ��
	 �  ��63   �� 56       � ��
	 �����63   �� 57       � ��
	 �  ��64   58      5:      5;      .��5<      �  � RowDefinitions 5=   
   �� 5>      $��* �6   �� 5?      $	��150 �6    � ColumnDefinitions 5B   
   .+�5D   
   �� $��1q�6   $��0��6%   $��0,0,0,0q�62   ._�5E      &   System.Windows.Controls.DataGrid  -   5        $��
shiftsGrid��5E         AutoGenerateColumns$
 True��6)   $��Stretch=�5F      $��Stretch=�6#   $
��Bold"�6?      CanUserAddRows$ False��5G      ���#007CA6   ColumnHeaderStyle 5H      �� 5J      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5K      ��  � ��	 �#A6750067   �� 5L       � ��
	 �����67   �� 5M       � ��$	 Center=�6G   �� 5N       � ��$	 Center=�6>   �� 5O       � ��
	 �   �68   �� 5P       � ��$	 0,0,1,0q�6<   5R         RowStyle 5T      �� 5U      )  #System.Windows.Controls.DataGridRow"  6   .�5V      ��  � ��	 �#007CA667   �� 5W       � ��
	 �����67   5Y       5]      ��%    5_      5`      5b      �� 5d   
   $��1��6   .+�5e      �� #��[  6   $*��$Создать новую смену��6<   $��Center=�6Z   $��35q�6w   $	��250��6�   $��50��6�   6�   5f      5h      5i      