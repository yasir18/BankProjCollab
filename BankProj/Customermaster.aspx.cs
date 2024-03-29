﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ServiceReference1;

public partial class _Customermaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"].ToString() == "Customer")
        {
            Role.Text = Session["role"].ToString();
            ServiceReference1.Service1Client obj = new ServiceReference1.Service1Client();
            string id = Session["userId"].ToString();
            //string customerName = obj.getCustomerName(id);
            //var v = obj.accountFromCustomer(id);
            //obj.
            //SqlDataReader dr = v;
            Master.FindControl("MasterButton1").Visible = false;
            Master.FindControl("MasterButton2").Visible = false;
            Master.FindControl("MasterButton3").Visible = false;
            Master.FindControl("MasterButton4").Visible = false;
            Master.FindControl("MasterButton5").Visible = false;
            // ((System.Web.UI.WebControls.Label)(Master.FindControl("HeaderName"))).Text = customerName;
            IList<Account> aobj = obj.accountFromCustomer(id);


            if (aobj.Count != 0)
            {
                GridView1.DataSource = aobj;
                GridView1.DataBind();
            }
            else
            {
                submit.Visible = false;
                ErrorMsg.Text = Resources.Resource.accountNotFound;
            }
        }
        else
        {
            Response.Redirect("LoginPageMaster.aspx");
        }

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        string selectedRecord;
        int serialNum = Convert.ToInt32(Request.Form["RadioButton1"]);
        selectedRecord = serialNum.ToString();
        if (selectedRecord == "0")
        {

            ErrorMsg.Text = Resources.Resource.accountError;

            ErrorMsg.Visible = true;
        }

        else
        {
            Session["accountNo"] = selectedRecord;
            Response.Redirect("CustomerMenuMaster.aspx");
            //Response.Write("<script>alert("+selectedRecord+")</script>");
        }
    }
}