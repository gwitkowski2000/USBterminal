using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO.Ports;
using System.Diagnostics;
using System.Windows.Threading;
using System.Threading;

namespace USBterminal
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        static string StatusText = "Halo";
        SerialPort mySerialPort = new SerialPort();
        Thread th1;
        Thread th2;

        public MainWindow()
        {
            InitializeComponent();
            
            string[] ports = System.IO.Ports.SerialPort.GetPortNames();
            

            foreach (string port in ports)
            {
                ComboBoxPortSelect.Items.Add(port);
            }

            ComboBoxSpeedSelect.SelectedIndex = 0;

        }
        
        private void ButtonConnect_Click(object sender, RoutedEventArgs e)
        {
            if(ComboBoxPortSelect.SelectedItem == null)
            {
                MessageBox.Show("Select COM Port first");
                return;
            }

            if(ComboBoxSpeedSelect.SelectedItem == null)
            {
                MessageBox.Show("Select port speed first");
                return;
            }

            mySerialPort.PortName = ComboBoxPortSelect.Text.Trim();
            mySerialPort.BaudRate = Convert.ToInt32(ComboBoxSpeedSelect.Text);
            mySerialPort.Parity = Parity.None;
            mySerialPort.StopBits = StopBits.One;
            mySerialPort.DataBits = 8;
            mySerialPort.Handshake = Handshake.None;
            mySerialPort.RtsEnable = true;

            
            mySerialPort.DataReceived += new SerialDataReceivedEventHandler(DataReceivedHandler);
            mySerialPort.Open();

            if(mySerialPort.IsOpen)
            {
                ButtonConnect.IsEnabled = false;
                ButtonDisconnect.IsEnabled = true;
            }

            if(mySerialPort.IsOpen == false)
            {
                ButtonConnect.IsEnabled = true;
                ButtonDisconnect.IsEnabled = false;
            }


        }


        void WriteStatusLine()
        {
            
            this.Dispatcher.Invoke(() => {TextBoxStatus.AppendText(String.Format("{0}", StatusText)); });
        }

        void indicateGreen()
        {
            this.Dispatcher.Invoke(() => { indicator.Fill = Brushes.Green; });
        }

        void indicateRed()
        {
            this.Dispatcher.Invoke(() => { indicator.Fill = Brushes.Red; });
        }



        private void DataReceivedHandler(object sender, SerialDataReceivedEventArgs e)
        {
            SerialPort sp = (SerialPort)sender;
            string indata = sp.ReadExisting();
            //TextBoxStatus.AppendText("Data received: \n\r");
            Trace.WriteLine(indata);
            StatusText = indata;

            th1 = new Thread(new ThreadStart(WriteStatusLine));
            th1.Start();

            if(indata == "Halo\n")
            {
                th2 = new Thread(new ThreadStart(indicateGreen));
            }
            else th2 = new Thread(new ThreadStart(indicateRed));

            th2.Start();

        }

 

        private void ButtonDisconnect_Click(object sender, RoutedEventArgs e)
        {
            if(mySerialPort.IsOpen == true)
            {
                mySerialPort.Close();
                ButtonDisconnect.IsEnabled = false;
                ButtonConnect.IsEnabled = true;
            }
        }

        private void ButtonSend_Click(object sender, RoutedEventArgs e)
        {
            

            if (mySerialPort.IsOpen && TextBoxDataSend.Text != null)
            {
                mySerialPort.WriteLine(TextBoxDataSend.Text);
               
            }
        }

        private void TextBoxStatus_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (TextBoxStatus.Text.Length > 64) TextBoxStatus.Text = "";
        }
    }
}
