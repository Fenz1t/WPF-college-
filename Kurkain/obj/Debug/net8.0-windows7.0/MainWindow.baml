   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	       Kurkain.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	     � Title$-  'Вход в учетную запись��5   	   $	��450��6'   $	��800��64    � WindowStartupLocation$ CenterScreen=�6A    � 	Resources 5	         DefaultButton �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers	 P� Property
 P� Value  GradientButton��%�  &	        &	 �    �� 5
   
   " ��6&   .�5      ��  � �� �#FFA2406+   �� 5       � ��
 �����6+   �� 5       � �� �	#FF7773F56,   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   #��z��6K   #��z��6w   $ 4��6�   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5      	 �@J�IsMouseOver$

 True��61   . �5      ��  � �� �	#FF281B6563   5      5      �� 5   
   " ��6'   .�5      ��  � �� �#ADD8E66+   �� 5        � ��
 �   �6+   �� 5!       � �� �	#FF7773F56,   �� 5"       � ��$
 Bold"�6+   �� 5#       � ��$ 16(�6)   �� 5$       � ��
 ���� 6,   �� 5%       � �� 5&      �� 5'      " ��6&   .R�5(      �� #��z��6!   $ 8��6K   ._�5)      �� $��Center=�6/   $��Center=�6L   5*      5+      5-       5.      P� 5/      	 �@J�IsMouseOver$

 True��61   . �50      ��  � �� �#9370DB63   �� 51       � ��
 �����63   �� 52       � �� �#9370DB64   53      55      56      .��57      � ��58   
   �� 59       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5:      �  � Color$ #00BFFF��6    � Offset$ 0Q�6/   � 5;      $ #4B0082��6   $ 1Q�6/   5<       � RowDefinitions 5>   
   �� 5?      $
��Auto �6    60   �� 5@      $��* �6    6-   �� 5A      $
��Auto �6    60    � ColumnDefinitions 5C   
   �� 5D      $��* �6   6+   .+�5F   
   �� $ 4��6   $��1��6#   $��Center=�60   $��Center=�6M   
������ $��2q�6�    �� Padding$ 	5,15,5,20q�6�    J� Effect 5G      3  -System.Windows.Media.Effects.DropShadowEffect  5H         Color$ Black��6#      
BlurRadius$ 10Q�61      ShadowDepth$ 9Q�6A      Opacity$	 0.5Q�6Q   ._�5J      �� .+�5K      �� $��
Логин��6   
�������$
��Bold"�6;   $
��18px(�6M   $
��Left=�6^   $	��Top=�6y   $��	10,0,10,0q�6�   6�   �� 5L      -   5         ��Name$ UsernameTextBox��5L      
������ 
�������$
��Bold"�6_   $��15(�6r   
�������$	��200��6�   $
��Left=�6�   $	��Top=�6�   $��	10,0,10,0q�6�   $��31��6�   .��6�   ��5M      �� 5N      " ��6    .�5O      ��  � �� 5P   "   �� 5Q   &   " ��66   .R�5R   *   �� #��z��5S      #��z��5T      #��z��5U      $ 5��5V      ._�5X   .   ��  ��Name$ PART_ContentHost��6;   $��Center=�6U   5Y   +   5Z   '   5\      5]      .��5^   %   5_      �� 5`      $��Пароль��6   
�������$
��Bold"�6<   $
��18px(�6N   $
��Left=�6_   $	��Top=�6z   $��
10,15,15,0q�6�   6�   G� 5a      -   5         G�Name$ PasswordTextBox��5a      
������ $	��200��6P   $��15(�6\   $
��Left=�6j   
�������
�������$	��Top=�6�   $��
10,0,10,15q�6�   $��31��6�   ��5b      �� 5c      " G�6    .�5d      ��  � �� 5e   "   �� 5f   &   " G�66   .R�5g   *   �� #��z��5h      #��z��5i      #��z��5j      $ 5��5k      ._�5m   .   �� $ PART_ContentHost��6;   $��Center=�6U   5n   +   5o   '   5q      5r      5t      �� 5w      -   5        #��[ 5w   4   $
��15px(�6]   $
��Bold"�6m   $��
Войти��6   $��Center=�6�   $��10q�6�   $��30��6�   $	��200��6�   
�������5y      5{      5|      5}      5~      