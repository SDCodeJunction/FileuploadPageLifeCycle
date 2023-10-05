using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace PageLifeCycle
{
    public class Global : System.Web.HttpApplication
    {
        #region
        //protected void Application_Start(object sender, EventArgs e)
        //{
        //}

        //protected void Application_End(object sender, EventArgs e)
        //{
        //}

        //protected void Session_Start(object sender, EventArgs e)
        //{
        //}

        //protected void Session_End(object sender, EventArgs e)
        //{
        //}

        //protected void Application_BeginRequest(object sender, EventArgs e)
        //{
        //}

        //protected void Application_AuthenticateRequest(object sender, EventArgs e)
        //{
        //}

        //protected void Application_Error(object sender, EventArgs e)
        //{
        //}

        #endregion

        protected void Application_Start(Object sender, EventArgs e)
        {
            Application["Title"] = "Global Sample";
        }
        protected void Session_Start(Object sender, EventArgs e)
        {
            Session["startValue"] = 0;
        }
        protected void Application_AuthenticateRequest(Object sender, EventArgs e)
        {
            // Extract the forms authentication cookie
            string cookieName = FormsAuthentication.FormsCookieName;
            HttpCookie authCookie = Context.Request.Cookies[cookieName];
            if (null == authCookie)
            {
                // There is no authentication cookie.
                return;
            }
            FormsAuthenticationTicket authTicket = null;
            try
            {
                authTicket = FormsAuthentication.Decrypt(authCookie.Value);
            }
            catch (Exception ex)
            {
                // Log exception details (omitted for simplicity)
                return;
            }
            if (null == authTicket)
            {
                // Cookie failed to decrypt.
                return;
            }
  
        }
        protected void Application_Error(Object sender, EventArgs e)
        {
            Response.Write("Error encountered.");
        }


    }
}