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
    public partial class viewOwn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                view();
            
        }

        public void view()
        {
            string s = (string)Session["viewown"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRMS"].ConnectionString);
            con.Open();
            String query = " Select *  from RegistationFrom where TrackId='" +s+ "' ";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataListimage.DataSource = dt;
            DataList1.DataSource = dt;
            DataList2.DataSource = dt;
            DataBind();  

        }
    }
}