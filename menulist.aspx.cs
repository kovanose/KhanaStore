using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class itemmenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"]!=null)
        {
            bindmenu();
        }
    }

    private void bindmenu()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["id"].ToString());
        switch(PID)
        {
            case 1:
                Label1.Text = "Aloo tikki burger ";
                Label11.Text = "35";
                Label2.Text = "Spicy’s special burger";
                Label12.Text = "50";
                Label3.Text = " French fries";
                Label13.Text = "80";
                Label4.Text = "Potato grilled sandwich";
                Label14.Text = "80";
                Label5.Text = " Falafel wra";
                Label15.Text = "80";
                Label6.Text = "Plain dosa ";
                Label16.Text = "50";
                Label7.Text = " Masala dosa ";
                Label17.Text = "70";
                Label8.Text = "Onion dosa ";
                Label18.Text = "80";
                Label9.Text = "Aloo parantha  ";
                Label19.Text = "30";
                Label10.Text = "Gobhi parantha ";
                Label20.Text = "35";
                Label21.Text = "Spicy Cuisine";
                break;
            case 2:
                Label1.Text = "Regular pizza";
                Label11.Text = "99";
                Label2.Text = "Medium pizza ";
                Label12.Text = "199";
                Label3.Text = " Margherita ";
                Label13.Text = "99";
                Label4.Text = "Cheese and corn  ";
                Label14.Text = "150";
                Label5.Text = "  Peppy Panner";
                Label15.Text = "205";
                Label6.Text = "Deluxie Veggie ";
                Label16.Text = "235";
                Label7.Text = " Extra Cheese";
                Label17.Text = "65";
                Label8.Text = "Vegeterian";
                Label18.Text = "30";
                Label9.Text = "Aloo parantha  ";
                Label19.Text = "30";
                Label10.Text = "Gobhi parantha ";
                Label20.Text = "35";
                Label21.Text = "Domino's";
                
                break;
            case 3:
                Label1.Text = " Normal Thali";
                Label11.Text = "45";
                Label2.Text = "Special Thali";
                Label12.Text = "60";
                Label3.Text = "Roti";
                Label13.Text = "5";
                Label4.Text = "Poori  ";
                Label14.Text = "5";
                Label5.Text = " Pulao";
                Label15.Text = "40";
                Label6.Text = "Plain dosa ";
                Label16.Text = "50";
                Label7.Text = " Masala dosa ";
                Label17.Text = "70";
                Label8.Text = "Onion dosa ";
                Label18.Text = "80";
                Label9.Text = "Aloo parantha  ";
                Label19.Text = "30";
                Label10.Text = "Gobhi parantha ";
                Label20.Text = "35";
                Label21.Text = "S.K Foods";
                
                break;
            case 4:
                Label1.Text = " Normal Thali";
                Label11.Text = "45";
                Label2.Text = "Special Thali";
                Label12.Text = "60";
                Label3.Text = "Roti";
                Label13.Text = "5";
                Label4.Text = "Poori  ";
                Label14.Text = "5";
                Label5.Text = " Pulao";
                Label15.Text = "40";
                Label6.Text = "Plain dosa ";
                Label16.Text = "50";
                Label7.Text = " Masala dosa ";
                Label17.Text = "70";
                Label8.Text = "Onion dosa ";
                Label18.Text = "80";
                Label9.Text = "Aloo parantha  ";
                Label19.Text = "30";
                Label10.Text = "Gobhi parantha ";
                Label20.Text = "35";
                Label21.Text = "P.J Foods";
               
                break;
            case 5:
                Label1.Text = "Meals ";
                Label11.Text = "60";
                Label2.Text = "Tomato rice";
                Label12.Text = "30";
                Label3.Text = "Lemon rice";
                Label13.Text = "30";
                Label4.Text = "Curd rice";
                Label14.Text = "40";
                Label5.Text = "Poori";
                Label15.Text = "40";
                Label6.Text = "Plain dosa ";
                Label16.Text = "50";
                Label7.Text = " Masala dosa ";
                Label17.Text = "70";
                Label8.Text = "Onion dosa ";
                Label18.Text = "80";
                Label9.Text = "Onion Bonda  ";
                Label19.Text = "30";
                Label10.Text = "idli";
                Label20.Text = "30";
                Label21.Text = "Southern Express";
               
                break;
        }

    }
}