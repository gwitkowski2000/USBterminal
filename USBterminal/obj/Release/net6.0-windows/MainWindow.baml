   M S B A M L   `   `   `  ���� F  BUSBterminal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:USBterminalUSBterminal  U QSystem.Runtime, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a7,clr-namespace:System;assembly=System.RuntimeSystem     USBterminal.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:USBterminal     ?System,clr-namespace:System;assembly=System.Runtime     -     �Name$  
mainWindow�� � Title$ 
MainWindow��$	��450��$	��800��.���  � ColumnDefinitions �� $	��28* ��� $
��125* ��� $	��39* ��� $
��608* �.+��� -    ��Name$ ComboBoxPortSelect��$
��Left=�$��	21,12,0,0q�$	��Top=�$	��120�� �� Text$ COM Port��$��2��$��1���� $��Port:��$
��Left=�$��	10,10,0,0q�$	��Top=�$��2���� $��Speed:��$
��Left=�$��	21,10,0,0q�$	��Top=�$��2��$��2���� -   $ ComboBoxSpeedSelect��$
��Left=�$��	33,12,0,0q�$	��Top=�$	��120��$��3��.@���9600����	57600����
115200���� -    ��Name$ ButtonConnect��$��Connect��$
��Left=�$��
158,13,0,0q�$	��Top=�$��65��$��3���� -   $ ButtonDisconnect��$��
Disconnect��$
��Left=�$��
228,13,0,0q�$	��Top=�$��65��$��3���� -    ��Name$ TextBoxStatus��$
��Left=�$	��326�� �� TextWrapping$
 Wrap=�$��Center=�$	��780�� �� TextAlignment$
 Left=�$��0,1,1,1q�$��4��$��10,0,0,0q��� -   $ TextBoxDataSend��$
��Left=�$��	10,0,0,10q�$
 Wrap=�$��Bottom=�$	��698��$��20��$��4���� -   $ 
ButtonSend��$
��Send��$��Right=�$��	0,0,10,10q�$��Bottom=�$��65��$��3���� -	   	 ��Name$	 	indicator��$��3��$
��Left=�$��20��$��
308,13,0,0q�
���   �$	��Top=�$��20�����	#FF4A3F3F