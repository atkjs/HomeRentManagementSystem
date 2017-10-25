using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
namespace Home_Rent_Management_System.HRMS
{
    public partial class RegSecondPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonNext_Click(object sender, EventArgs e)

        {
            String Name = TextName.Text;
            String Father = TextFather.Text;
            String DOB = TextDb.Text;
            String Employee = TextEmploye.Text;
            String Education = TextEducation.Text;
            String Phone = TextMobile.Text;
            String Email = TextEmail.Text;
            String NationalID = TextNational.Text;
            String Religon = DropDownReligion.Text;
            String Adress = TextAddress.Text;

            String MarridStatus = String.Empty;
            if (RadioButtonMarid.Checked)
            {
                MarridStatus = "Marid";
                Session["marridStatus"] = MarridStatus;
            }
            else if (RadioButtonUnmarid.Checked)
            {
                MarridStatus = "Unmarid";
                Session["marridStatus"] = MarridStatus;
            }

            String EmployeA = TextEmployeeA.Text;


            Session["name"] = Name;
            Session["father"] = Father;
            Session["dob"] = DOB;
            Session["employee"] = Employee;
            Session["education"] = Education;
            Session["phone"] = Phone;
            Session["email"] = Email;
            Session["nationid"] = NationalID;
            Session["religon"] = Religon;
            Session["address"] = Adress;
            Session["employeea"] = EmployeA;



            Response.Redirect("FinalReg.aspx");
        }

        protected void txtPhone_changed(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRMS"].ConnectionString);
            con.Open();

            String query = " Select Mobile  from RegistationFrom";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                if (dr["Mobile"].ToString() == TextMobile.Text.ToString())
                {

                    Response.Write("<script>alert('Phone Number  Already exit')</script>");
                    break;
                }
            }

        }

    }
}