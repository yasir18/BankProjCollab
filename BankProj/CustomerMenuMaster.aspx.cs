﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _CustomerMenuMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["role"].ToString() != "Customer")
        {
            Response.Redirect("LoginPageMaster.aspx");
        }
        else
        {
            account.Text = Session["accountNo"].ToString();
            // ((System.Web.UI.WebControls.Label)(Master.FindControl("HeaderAccountNo"))).Text = Session["accountNo"].ToString();
            //  Master.FindControl("HeaderName").Text = S;
            Master.HeaderAccountLabel.Text = Session["accountNo"].ToString();

        }

        //Balance.Text = Resources.Resource.greetCustomer;
    }


}