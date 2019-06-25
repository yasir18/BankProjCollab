using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _CustomStatementMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["role"].ToString() != "Customer")
            {
                Response.Redirect("LoginPageMaster.aspx");
            }
            Master.HeaderAccountLabel.Text = Session["accountNo"].ToString();
            TextBox1.Text = Session["accountNo"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Session["startdate"] = Calendar1.Text;
        Session["enddate"] = Calendar2.Text;
        Response.Redirect("CustomStatementGridMaster.aspx");
    }
}