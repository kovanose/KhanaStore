using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();
        if (Session["USERNAME"] != null)
        {
            btnSignUp.Visible = false;
            btnSignIn.Visible = false;
            btnSignOut.Visible = true;
            lblSuccess.Text = "Login Success, Welcome " + Session["USERNAME"].ToString() + "";
        }
        else
        {
            btnSignUp.Visible = true;
            btnSignIn.Visible = true;
            btnSignOut.Visible = false;

        }
    }
    public void BindCartNumber()
    {
        if (Session["buyitems"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int a = dt.Rows.Count;
            pCount.InnerText = a.ToString();
        }
        else
        {
            pCount.InnerText = 0.ToString();
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }

  
  
} 