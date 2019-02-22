using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class catproductsview : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
       
              //  BindProductImages();
                BindProductDetails();
         
    }

    private void BindProductDetails()
    {
        
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.* from tblProducts A inner join tblProductImages B on B.PID=A.PId", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                   // String a = PSubCatID.ToString();
                    DataSet ds = new DataSet();
                    sda.Fill(ds);

                    string a = ds.Tables[0].Rows[0]["PSubCatID"].ToString();
                    int i = int.Parse(a);
                    if (i==13)
                    {
                        rptrimages.DataSource = dtBrands;
                        rptrimages.DataBind();
                    }
                  
                }
            }
        }
    }
   /* private void BindProductImages()
    {
        String id = "PId";
        //int iid = sample().ToString();

        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from tblProductImages where PId=" + id + "", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    rptrimages.DataSource = dtBrands;
                    rptrimages.DataBind();
                }

            }
        }
    }*/
}