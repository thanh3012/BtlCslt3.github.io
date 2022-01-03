using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebDongHo
{
    public class Global : HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["So_nguoi_online"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["TrangThai"] = "IsLogout";   
            

            System.IO.StreamReader reader = new System.IO.StreamReader(Server.MapPath("\\SLTC.txt"));
            string s = reader.ReadLine();
            reader.Close();

            long newCount = long.Parse(s) + 1;
            Session["LoginCount"] = newCount;

            System.IO.StreamWriter writer = new System.IO.StreamWriter(Server.MapPath("\\SLTC.txt"));
            writer.Write(newCount.ToString());
            writer.Close();


            //Application["So_nguoi_online"] = (int.Parse(Application["So_nguoi_online"].ToString()) + 1).ToString();
            Application["So_nguoi_online"] = (int)Application["So_nguoi_online"] + 1;

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            //Application["So_nguoi_online"] = (int.Parse(Application["So_nguoi_online"].ToString().Trim()) - 1);
            Application["So_nguoi_online"] = (int)Application["So_nguoi_online"] - 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {           
            Application["So_nguoi_online"] = (int)Application["So_nguoi_online"] - 1;          
        }
       

    }
}