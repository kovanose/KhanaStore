using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

public partial class AddProduct : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategory();
            ddlsubcategory.Enabled = false;
        }

    }
    private void BindCategory()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblCategory", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlcategory.DataSource = dt;
                ddlcategory.DataTextField = "CatName";
                ddlcategory.DataValueField = "CatID";
                ddlcategory.DataBind();
                ddlcategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
    }

    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        int MainCategoryID = Convert.ToInt32(ddlcategory.SelectedItem.Value);
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblSubCategories where MainCatID='" + ddlcategory.SelectedItem.Value + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlsubcategory.DataSource = dt;
                ddlsubcategory.DataTextField = "SubCatName";
                ddlsubcategory.DataValueField = "SubCatID";
                ddlsubcategory.DataBind();
                ddlsubcategory.Items.Insert(0, new ListItem("-Select-", "0"));
                ddlsubcategory.Enabled = true;
            }
        }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("procInsertProducts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PName", txtPName.Text);
            cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
            cmd.Parameters.AddWithValue("@PCategoryID", ddlcategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSubCatID", ddlsubcategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PDescription", txtdescription.Text);
            if (cbfd.Checked == true)
            {
                cmd.Parameters.AddWithValue("@FreeDelivary", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@FreeDelivary", 0.ToString());
            }
            if (cbcod.Checked == true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@COD", 0.ToString());
            }
            con.Open();
            Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

            // insert Quantity
            int Quantity = Convert.ToInt32(txtquantity.Text);
            SqlCommand cmd2 = new SqlCommand("insert into tblProductSizeQuantity values('" + PID + "','" + Quantity + "')", con);
            cmd2.ExecuteNonQuery();

            //Insert and upload Images
            if (fuimg1.HasFile)
            {
                string SavePath = Server.MapPath("~/images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fuimg1.PostedFile.FileName);
                fuimg1.SaveAs(SavePath + "\\" + txtPName.Text.ToString().Trim() + "01" + Extention);

                SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtPName.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
                cmd3.ExecuteNonQuery();
            }
        }
    }
}