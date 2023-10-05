using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThemesExample
{
    public partial class Default : System.Web.UI.Page
    {
        static string themeValue;

        //public ThemeTest()
        //{
        //     this.PreInit += new EventHandler(Page_PreInit);
        //}
        private void Page_PreInit(object sender, EventArgs e)
        {
            Page.Theme = themeValue;
        }
        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            themeValue = ListBox1.SelectedItem.Value;
            Response.Redirect(Request.Url.ToString());
        }
    }
}