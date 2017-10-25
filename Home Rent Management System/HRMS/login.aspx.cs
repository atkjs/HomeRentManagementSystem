using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Home_Rent_Management_System.HRMS
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonNext_Click(object sender, EventArgs e)
        {
            //if (Page.IsValid)
            //{
                string viewOwn = TextBoxLogin.Text;
                Session["viewown"] = viewOwn;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRMS"].ConnectionString);
                con.Open();
                String query = " Select *  from RegistationFrom where TrackId='" + TextBoxLogin.Text + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {

                    Response.Redirect("viewOwn.aspx"); 
                }

                else
                {

                    Label1.Text = "Please Input Correct Tracking Number.."; 
                   
                    
                }

            //}
            //else
            //{

              //  Label1.Text = "OOPS!! Validation Is incorrect...";
            //}
        }
    }
}