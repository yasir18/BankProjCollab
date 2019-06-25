using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ServiceReference1;
using System.Data.SqlClient;
using System.Configuration;

public partial class _ManageCustomerMaster : System.Web.UI.Page
{
    string msg=ConfigurationManager.AppSettings["ConnectionString"];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != "Manager")
        {
            Response.Redirect("LoginPageMaster.aspx");
        }
        else
        {
            add.Visible = false;
            edit.Visible = false;
            delete.Visible = false;
        }
    }

    protected void check_Click(object sender, EventArgs e)
    {
        ServiceReference1.Service1Client sc = new ServiceReference1.Service1Client();
        if (custId.Text == "")
            Label2.Text = Resources.Resource.enterCustomerId;
        else
        {
            try
            {
                IList<customer> clist= sc.getSpecificCustomer(int.Parse(custId.Text));

                if (clist.Count == 0)
                {
                    Label2.Text = Resources.Resource.noCustomersMessage;
                    //result.DataSource = sc.getSpecificCustomer(int.Parse(custId.Text));
                    //result.DataBind();
                    add.Visible = true;
                    edit.Visible = false;
                    delete.Visible = false;
                }
                else
                {
                    Label2.Text = Resources.Resource.customerFound;
                    //jumbotronDiv.Attributes.Add("style", "margin-top:0px");
                    result.DataSource = clist;
                    result.DataBind();
                    add.Visible = false;
                    edit.Visible = true;
                    delete.Visible = true;
                }
            }
            catch(Exception exe)
            {
                Label3.Text = Resources.Resource.invalidDetails;
            }
        }
    }


    protected void deleteCustomerBtn_Click(object sender, EventArgs e)
    {
        ServiceReference1.Service1Client sc = new ServiceReference1.Service1Client();
        int customerID = int.Parse(custId.Text);
        int rows_affected = sc.deleteCustomer(customerID);
        if (rows_affected == 0)
        {
            Label2.Text = Resources.Resource.customerNotDeleted;
        }
        else
        {
            Label2.Text = Resources.Resource.customerDeleted;
        }
    }



    protected void showAllCustomersBtn_Click(object sender, EventArgs e)
    {
        ServiceReference1.Service1Client sc = new ServiceReference1.Service1Client();
        IList<customer> customersList= sc.showAll();
        if (customersList.Count == 0)
        {
            Label2.Text = Resources.Resource.noCustomersMessage;
            //result.DataSource = customersList;
            //result.DataBind();
        }
        else
        {
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Odisha-City: " + customersList[1].City + "');", true);
            result.DataSource = customersList;
            result.DataBind();
        }
    }

    protected void add_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddCustomerMaster.aspx");
    }

    protected void edit_Click(object sender, EventArgs e)
    {
        Session["custId"] = custId.Text;
        Response.Redirect("UpdateCustomerMaster.aspx");
    }
}