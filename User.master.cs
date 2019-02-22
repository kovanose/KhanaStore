using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();

        if (Session["USERNAME"] != null)
        {
            btnSignOut.Visible = true;
            btnSignIn.Visible = false;
        }
        else
        {
            btnSignOut.Visible = false;
            btnSignIn.Visible = true;
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }


    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignIn.aspx");
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
}
