using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ServiceReference1;

public partial class _CustomStatementGridMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"].ToString() != "Customer")
        {
            Response.Redirect("LoginPageMaster.aspx");
        }
        else
        {
            //try
            //{
                ServiceReference1.Service1Client obj = new ServiceReference1.Service1Client();
                int acc = int.Parse(Session["accountNo"].ToString());
                Master.HeaderAccountLabel.Text = Session["accountNo"].ToString();
                DateTime start = DateTime.Parse(Session["startdate"].ToString());
                DateTime end = DateTime.Parse(Session["enddate"].ToString());

                IList<Transaction> transactionList = obj.customstatement(acc, start, end);

                if (transactionList.Count == 0)
                {
                    Label1.Text = "No Transactions Available";
                }
                else
                {
                    GridView1.DataSource = transactionList;
                    GridView1.DataBind();
                }   
            //}

            //catch (Exception exe)
            //{
            //    Label1.Text = Resources.Resource.invalidDetails;
            //}
        }
    }
}