   M S B A M L   `   `   `  ����F  BUSBterminal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:USBterminalUSBterminal  5   	   U QSystem.Runtime, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a7,clr-namespace:System;assembly=System.RuntimeSystem 5   	       USBterminal.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:USBterminal     5   	   ?System,clr-namespace:System;assembly=System.Runtime     5   	   -   5          �Name$  
mainWindow��5   E    � Title$ 
MainWindow��5	   	   $	��450��6   $	��800��6)   .��5
      �  � ColumnDefinitions 5   
   �� 5      $	��28* �6   �� 5      $
��125* �6   �� 5      $	��39* �6   �� 5      $
��608* �6   .+�5   
   �� -   5         ��Name$ ComboBoxPortSelect��5      $
��Left=�6/   $��	21,12,0,0q�6J   $	��Top=�6]   $	��120��6u    �� Text$ COM Port��6�   $��2��6�   $��1��6�   �� 5   
   $��Port:��6   $
��Left=�6    $��	10,10,0,0q�6;   $	��Top=�6N   $��2��6f   �� 5   
   $��Speed:��6   $
��Left=�6!   $��	21,10,0,0q�6<   $	��Top=�6O   $��2��6g   $��2��6w   �� 5   
   -   5        $ ComboBoxSpeedSelect��5      $
��Left=�60   $��	33,12,0,0q�6K   $	��Top=�6^   $	��120��6v   $��3��6�   .@�5      ��9600��6"   ��5      	57600��6#   ��5      
115200��6$   5      �� 5   
   -   5         ��Name$ ButtonConnect��5      $��Connect��6(   $
��Left=�6:   $��
158,13,0,0q�6U   $	��Top=�6i   $��65��6�   $��3��6�   �� 5   
   -   5        $ ButtonDisconnect��5      $��
Disconnect��6+   $
��Left=�6@   $��
228,13,0,0q�6[   $	��Top=�6o   $��65��6�   $��3��6�   6�   �� 5   
   -   5         ��Name$ TextBoxStatus��5      $
��Left=�6)   $	��326��6D    �� TextWrapping$
 Wrap=�6Q   $��Center=�6e   $	��780��6�    �� TextAlignment$
 Left=�6�   $��0,1,1,1q�6�   $��4��6�   $��10,0,0,0q�6�   6�   �� 5   
   -   5        $ TextBoxDataSend��5      $
��Left=�6+   $��	10,0,0,10q�6F   $
 Wrap=�6Y   $��Bottom=�6m   $	��698��6�   $��20��6�   $��4��6�   �� 5   
   -   5        $ 
ButtonSend��5      $
��Send��6%   $��Right=�64   $��	0,0,10,10q�6P   $��Bottom=�6c   $��65��6~   $��3��6�   6�   �� 5   
   -	   5        	 ��Name$	 	indicator��5      $��3��6'   $
��Left=�67   $��20��6R   $��
308,13,0,0q�6^   
���   �$	��Top=�6�   $��20��6�   ���	#FF4A3F3F6�   5      5       