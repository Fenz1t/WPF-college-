   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	        Kurkain.EmployeeManagement   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	     � Title$3  -Управление Сотрудниками��5   	   $	��500��6)   $	��365��66    � WindowStartupLocation$ CenterScreen=�6B   ��5	      �� 5
   
    �� EndPoint$ 0.7,0&�6    �� 
StartPoint$ 0.7,6&�6/   .��5      �  � Color$ 	#FFDAA7FF��6    � Offset$ 2Q�6-   � 5      $ 	#FFDAA7FF��6   $ 1Q�6-   � 5      $ 	#FFDAA7FF��6   $ 0Q�6-   5       � 	Resources 5         DefaultButton �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value��%�  &	        �� 5   
   " ��6&   .�5      ��  � ��	 �#3821A06+   �� 5       � ��
	 �����6+   �� 5       � ��	 �	#FF7773F56,   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5        �@J�IsMouseOver$
 True��61   . �5!      ��  � ��	 �	#FF281B6563   5"      5$      5%      .��5'      �  � RowDefinitions 5(   
   �� 5)      $��* �6   �� 5*      $	��150 �6    � ColumnDefinitions 5-   
   .+�51   
   �� $��1q�6   $��0��6%   $��0,0,0,0q�62   ._�52      &   System.Windows.Controls.DataGrid  -   5          Name$ EmployeesGrid��52         AutoGenerateColumns$
 True��6Y   $��Stretch=�53      $��Stretch=�6)   $
��Bold"�6E      CanUserAddRows$ False��54      ���#231F44   ColumnHeaderStyle 55      �� 56      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�57      ��  � ��	 �#3821A067   �� 58       � ��
	 �����67   �� 59       � ��$	 Center=�6G   �� 5:       � ��$	 Center=�6>   5;         RowStyle 5=      �� 5>      )  #System.Windows.Controls.DataGridRow"  6   .�5?      ��  � ��	 �#1a283667   �� 5@       � ��
	 �����67   5A      5C      5E      �� 5H   
   $��1��6   $��Center=�6"   $��Center=�6>   .+�5I      �� #��[  6   $	��250��6<   $��35��6K   $>��8Уволить выбранного сотрудника��6Z   $
��Bold"�6�   5K      �� 5L      #��[  6   $@��:Добавить выбранного сотрудника��6<   $	��250��6e   $��35��6t   $
��Bold"�6�   $��0,10,0,0q�6�   5N      �� 5O      -   5        #��[  5O      $��
Назад��6R   $	��250��6b   $��35��6q   $
��Bold"�6�   $��0,10,0,0q�6�   5Q      5S      5V      5W      