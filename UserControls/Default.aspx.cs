﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserControls
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var firstname = FirstNameTextBox.Text;
            var lastname = LastNameTextBox.Text;
            var state = DropDownList1.SelectedValue;
            DisplayLabel.Text = "Hey " + firstname + "" + lastname + "! Welcome to " + state;
        }

    }
}