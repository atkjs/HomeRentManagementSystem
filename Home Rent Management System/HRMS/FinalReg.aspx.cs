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
    public partial class FinalReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            show();
        }

        protected void ButtonPrevious_Click(object sender, EventArgs e)
        {

            show();
        }

        public void show()
        {
            LabelDivision.Text = "বিভাগঃ" + " " + (string)Session["division"];
            LabelThana.Text = "থানাঃ" + " " + (string)Session["thana"];
            LabelFlat.Text = "ফ্লাট / তলাঃ" + " " + (string)Session["flat"];
            LabelHouse.Text = "বাড়ী / হোল্ডিংঃ" + " " + (string)Session["house"];
            LabelRoad.Text = "রাস্তাঃ" + " " + (string)Session["road"];
            LabelArea.Text = "এলাকাঃ" + " " + (string)Session["area"];
            LabelPost.Text = "পোস্ট কোডঃ" + " " + (string)Session["post"];

            LabelName.Text = " নামঃ " + " " + (String)Session["name"];
            LabelFather.Text = "পিতার নামঃ " + " " + (String)Session["father"];
            LabelDOB.Text = "জন্ম তারিখঃ " + " " + (String)Session["dob"];
            LabelEmployee.Text = "পেশাঃ " + " " + (String)Session["employee"];
            LabelEducation.Text = "শিক্ষাগত যোগ্যতাঃ" + " " + (String)Session["education"];
            LabelPhone.Text = "মোবাইল নাম্বারঃ" + " " + (String)Session["phone"];
            LabelEmail.Text = "ইমেইল আইডিঃ" + " " + (String)Session["email"];
            LabelNationID.Text = "জাতীয় পরিচয় পত্রের নাম্বারঃ" + " " + (String)Session["nationid"];
            LabelRelign.Text = "ধর্মঃ" + " " + (String)Session["religon"];
            LabelAddress.Text = "স্থায়ী টিকানাঃ" + " " + (String)Session["address"];
            LabelMarid.Text = "বৈবাহিক অবস্থাঃ " + " " + (String)Session["marridStatus"];
            LabelEmployeeA.Text = "কর্ম স্থলের টিকানাঃ" + " " + (String)Session["employeea"];
        }

        protected void ButtonNext_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int n = r.Next(10);
            String phn = (String)Session["phone"];
            string tracing = phn + n;

            Session["track"] = tracing;
            string str = FileUploadImage.FileName;
            FileUploadImage.PostedFile.SaveAs(Server.MapPath(".") + "//images//" + str);
            String file = "~//HRMS//images//" + str.ToString();



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRMS"].ConnectionString);
            con.Open();

            String query = @"INSERT INTO [Hrms].[dbo].[RegistationFrom]
           ([Division]
           ,[Thana]
           ,[Flat]
           ,[House]
           ,[Rood]
           ,[Area]
           ,[Post]
           ,[Name]
           ,[FatherName]
           ,[DOB]
           ,[Employee]
           ,[Education]
           ,[Mobile]
           ,[Email]
           ,[NationId]
           ,[Religion]
           ,[Adress]
           ,[Maridstatus]
           ,[EmployeeAdd]
           ,[Image]
           ,[OwnerName]
           ,[OwnerPhone]
           ,[AttendDate]
           ,[TrackId])
     VALUES(N'" + Session["division"] + "',N'" + Session["thana"] + "',N'" + Session["flat"] + "',N'" + Session["house"] + "',N'" + Session["road"] + "',N'" + Session["area"] + "',N'" + Session["post"] + "',N'" + Session["name"] + "',N'" + Session["father"] + "',N'" + Session["dob"] + "',N'" + Session["employee"] + "',N'" + Session["education"] + "',N'" + Session["phone"] + "',N'" + Session["email"] + "',N'" + Session["nationid"] + "',N'" + Session["religon"] + "',N'" + Session["address"] + "',N'" + Session["marridStatus"] + "',N'" + Session["employeea"] + "','" + file + "',N'" + TextOwnerName.Text + "',N'" + TextOwnerMobile.Text + "',N'" + TextDate.Text + "',N'" + tracing + "')";


            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("CompleteReg.aspx");
        }

        

    }
}