using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("PId");
            dt.Columns.Add("PName");
            dt.Columns.Add("PPrice");
            dt.Columns.Add("totalprice");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    String mycon = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from tblProducts where PId=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["PId"] = ds.Tables[0].Rows[0]["PId"].ToString();
                    dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();


                    dr["PPrice"] = ds.Tables[0].Rows[0]["PPrice"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["PPrice"].ToString());

                    int totalprice = price;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                    Response.Redirect("Cart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    String mycon = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                    SqlConnection scon = new SqlConnection(mycon);
                    String myquery = "select * from productdetail where productid=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["PId"] = ds.Tables[0].Rows[0]["PId"].ToString();
                    dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();
                    // dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                    //  dr["quantity"] = Request.QueryString["quantity"];
                    dr["PPrice"] = ds.Tables[0].Rows[0]["PPrice"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["PPrice"].ToString());
                    //   int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                    Response.Redirect("Cart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[3].Text = "Total Amount";
                    GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();

                }


            }
            // Label2.Text = GridView1.Rows.Count.ToString();

        }
        Label4.Text = DateTime.Now.ToShortDateString();
        findorderid();
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        Label3.Text = orderid;
    }

    public void saveaddress()
    {
        String updatepass = "insert into OrderAddress(orderid,address,mobilenumber) values('" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
        String mycon1 = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        s.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];



        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            String updatepass = "insert into OrderDetails(orderid,sno,PId,PName,PPrice,dateoforder) values('" + Label3.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["PId"] + ",'" + dt.Rows[i]["PName"] + "'," + dt.Rows[i]["PPrice"] + ",'" + Label4.Text + "')";
            String mycon1 = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;  
            cmd1.ExecuteNonQuery();
            s.Close();

        }
        saveaddress();
        Response.Redirect("PlacedOrder.aspx?orderid=" + Label3.Text);
    }
}