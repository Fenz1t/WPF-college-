   M S B A M L   `   `   `  ����B  >Kurkain, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KurkainKurkain  5   	       Kurkain.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Kurkain     5   	     � Title$-  'Вход в учетную запись��5   	   $	��450��6'   $	��800��64    � WindowStartupLocation$ CenterScreen=�6A   .��5	      � .+�5
   
   � ���	#FFDAA7FF � RowDefinitions 5      �� 5      $
��Auto �6    60   �� 5      $��* �6    6-   �� 5      $
��Auto �6    60    � ColumnDefinitions 5      �� 5      $��* �6#   6/   .+�5      �� $��1��6   $��Center=�6&   $��Center=�6C   ���	#FFFFF8F8.+�5      �� $��
Логин��6   $
��Bold"�6)   $
��15px(�6;   $
��Left=�6L   $	��Top=�6g   $��	10,0,10,0q�6   6�   �� 5      -   5         ��Name$ UsernameTextBox��5      ���	#FF7773F5$	��200��6J   $
��Left=�6V   $	��Top=�6q   $��	10,0,10,0q�6�   $��31��6�   6�   �� 5      $��Пароль:��6   $
��Bold"�6*   $
��15px(�6<   $
��Left=�6M   $	��Top=�6h   $��	10,0,10,0q�6�   6�   G� 5      -   5         G�Name$ PasswordTextBox��5      ���	#FF7773F5$	��200��6N   $
��Left=�6Z   $	��Top=�6v   $��	10,0,10,0q�6�   $��31��6�   6�   �� 5      ���#8000FF���	#FF80F096$
��15px(�6F   $
��Bold"�6V   $��
Войти��6h   $��Center=�6y   $��10q�6�   $��30��6�   $	��200��6�   
�������5      5      5"      5#      5$      