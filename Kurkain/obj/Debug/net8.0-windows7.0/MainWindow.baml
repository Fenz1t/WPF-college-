   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	       Kurkain.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	     � Title$-  'Вход в учетную запись��5   	   $	��450��6'   $	��800��64    � WindowStartupLocation$ CenterScreen=�6A    � 	Resources 5	         DefaultButton �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers	 P� Property
 P� Value  GradientButton �� 
StartPoint �� EndPoint � Color � Offset��%:  &	        &	 �    �� 5
   
   " ��6&   .�5      ��  � �� �#FFA2406+   �� 5       � ��
 �����6+   �� 5       � �� �	#FF7773F56,   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5      	 �@J�IsMouseOver$

 True��61   . �5      ��  � �� �	#FF281B6563   5      5      �� 5   
   " ��6'   .�5      ��  � �� 5       �� 5!      $	 0,2&�6*   $	 1,5&�6;   .��5"      � $ #00BFFF��6'   $	 0.0Q�67   � 5#      $ #4B0082��6'   $	 0.7Q�67   5$      5&      �� 5'       � ��
 �����6+   �� 5(       � ��$
 Bold"�6+   �� 5)       � ��$ 16(�6)   �� 5*       � ��
 ���� 6,   �� 5+       � �� 5,      �� 5-      " ��6&   .R�5.      �� #��z��6!   $ 8��6K   ._�5/      �� $��Center=�6/   $��Center=�6L   50      51      53       54      P� 55      	 �@J�IsMouseOver$

 True��61   . �56      ��  � �� 57      �� 58      $	 0,0&�62   $	 1,1&�6C   .��59   "   � $ #FFA240��6/   $	 0.0Q�6?   � 5:   "   $ #FFA245��6/   $	 1.0Q�6?   5;      5=      5>      5@      5A      .��5B      � ��5C   
   �� 5D      $	 0,0&�6"   $	 1,1&�63   .��5E      � $ #00BFFF��6   $ 0Q�6/   � 5F      $ #4B0082��6   $ 1Q�6/   5G       � RowDefinitions 5I   
   �� 5J      $
��Auto �6    60   �� 5K      $��* �6    6-   �� 5L      $
��Auto �6    60    � ColumnDefinitions 5N   
   �� 5O      $��* �6   6+   .+�5Q   
   �� $ 4��6   $��1��6#   $��Center=�60   $��Center=�6M   
������ $��2q�6�    �� Padding$ 	5,15,5,20q�6�    J� Effect 5R      3  -System.Windows.Media.Effects.DropShadowEffect  5S         Color$ Black��6#      
BlurRadius$ 10Q�61      ShadowDepth$ 9Q�6A      Opacity$	 0.5Q�6Q   ._�5U      �� .+�5V      �� $��
Логин��6   
�������$
��Bold"�6;   $
��18px(�6M   $
��Left=�6^   $	��Top=�6y   $��	10,0,10,0q�6�   6�   �� 5W      -   5         ��Name$ UsernameTextBox��5W      
������ ���#D3D3D3$
��Bold"�6a   $��15(�6t   
�������$	��200��6�   $
��Left=�6�   $	��Top=�6�   $��	10,0,10,0q�6�   $��31��6�   .��6�   ��5X      �� 5Y      " ��6    .�5Z      ��  � �� 5[   "   �� 5\   &   " ��66   .R�5]   *   �� #��z��5^      #��z��5_      #��z��5`      $ 5��5a      ._�5c   .   ��  ��Name$ PART_ContentHost��6;   $��Center=�6U   5d   +   5e   '   5g      5h      .��5i   %   5j      �� 5k      $��Пароль��6   
�������$
��Bold"�6<   $
��18px(�6N   $
��Left=�6_   $	��Top=�6z   $��
10,15,15,0q�6�   6�   G� 5l      -   5         G�Name$ PasswordTextBox��5l      
������ $	��200��6P   $��15(�6\   $
��Left=�6j   
�������
�������$	��Top=�6�   $��
10,0,10,15q�6�   $��31��6�   ��5m      �� 5n      " G�6    .�5o      ��  � �� 5p   "   �� 5q   &   " G�66   .R�5r   *   �� #��z��5s      #��z��5t      #��z��5u      $ 5��5v      ._�5x   .   �� $ PART_ContentHost��6;   $��Center=�6U   5y   +   5z   '   5|      5}      5      �� 5�      -   5        #��[ 5�   4   $
��15px(�6]   $
��Bold"�6m   $��
Войти��6   $��Center=�6�   $��10q�6�   $��30��6�   $	��200��6�   
�������5�      5�      5�      5�      5�      