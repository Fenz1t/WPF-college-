   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	       Kurkain.Views.CookWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	   -   5          � WindowStyle$  SingleBorderWindow=�5	   	    � Title$ Окно повара��5
   	   $	��500��6   $	��400��6*    � WindowStartupLocation$ CenterScreen=�67   ��5      �� 5   
    �� 
StartPoint$	 1,0&�6    �� EndPoint$	 0,1&�6/   .��5      �  � Color$ #00BFFF��6    � Offset$ 0Q�6+   � 5      $ #4B0082��6   $ 1Q�6+   5       � 	Resources 5         DefaultButton �� 
TargetType	 �� Property
 �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  DeleteButton��%n  &	        &	 0    �� 5   
   " ��6&   .�5      �� 	 � ��
 �#ADD8E66+   �� 5      	 � ��

 �   �6+   �� 5      	 � ��

 ���� 6,   �� 5      	 � ��
 5      �� 5      " ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5        5!      P� 5"       �@J�IsMouseOver$
 True��61   . �5#      �� 	 � ��
 �	#FF7773F563   �� 5$      	 � ��
 �	#FF7773F564   �� 5%      	 � ��

 �����63   5&      5(      �� 5)   
   " ��6%   .�5*      �� 	 � ��
 �#FFA2406+   �� 5+      	 � ��

 �����6+   �� 5,      	 � ��
 �	#FF7773F56,   �� 5-      	 � ��
 5/      �� 50      " ��6&   .R�51      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�52      �� $��Center=�6/   $��Center=�6L   53      54      56       57      P� 58       �@J�IsMouseOver$
 True��61   . �59      �� 	 � ��

 �  ��63   �� 5:      	 � ��

 �����63   �� 5;      	 � ��

 �  ��64   5<      5>      5?      .��5@      � .+�5B   
   �  � RowDefinitions 5C      �� 5D      $��* �6    �� 5E      $	��120 �6     � ColumnDefinitions 5H      .+�5L      �� $��1q�6   $��0��6)   $��0,0,0,0q�66   ._�5M      &   System.Windows.Controls.DataGrid  -   5          Name$ 
OrdersGrid��5M         AutoGenerateColumns$ False��6Z   $��Stretch=�5N         
IsReadOnly$ False��6&   $��Stretch=�69   $
��Bold"�6U      CanUserAddRows$ False��5O         Columns 5P      0  *System.Windows.Controls.DataGridTextColumn  5Q      ,  &System.Windows.Controls.DataGridColumn   Header$ id��6-   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *Id+6R     5R      $
 Date��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6T    6;   �� *Date+6a     5S      $ Status��6-   $ * 6X    6=   �� *Status+6d     5T      $ UserId��6-   $ * 6X    6=   �� *UserId+6d     5U      $ Place��6-   $ * 6V    6<   �� *Place+6b     5V      $ CountPerson��6-   $ * 6b    6B   �� *CountPerson+6n   ��5Y      �� 5Z      $	 1,0&�6.   $	 0,1&�6?   .��5[      � $ #00BFFF��6+   $ 0Q�6;   � 5\      $ #4B0082��6+   $ 1Q�6;   5]         ColumnHeaderStyle 5_      �� 5`      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    .�5a      �� 	 � ��
 �#ADD8E66;   �� 5b      	 � ��

 �   �6;   �� 5c      	 � ��$
 Center=�6K   �� 5d      	 � ��$
 Center=�6B   5e         RowStyle 5g      �� 5h      )  #System.Windows.Controls.DataGridRow"  6    .�5i      �� 	 � ��
 �#007CA66;   �� 5j      	 � ��

 �����6;   5k      5m      5n      �� 5q      $��1��6   $��Center=�6&   $��Center=�6B   .+�5r      �� -   5        #��[  5r      $	��250��6U   $��45��6d   $,��&Добавить новый заказ��6s   $
��Bold"�6�   5s      �� 5t      -   5        #��[  5t      $	��250��6S   $��45��6b   $��0,10,0,0q�6q   $9��3Обновить таблицу с заказами��6�   $
��Bold"�6�   5u      5v      5w      5x      5y      