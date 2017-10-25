using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home_Rent_Management_System.HRMS
{
    public partial class RegFirstStep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonNext_Click(object sender, EventArgs e)
        {
            String Division =DropDownListDivison.Text;
            String Thana = DropDownListThana.Text;
            String Flat =TextFlat.Text;
            String House = TextBoxHouse.Text;
            String Road = TextRood.Text;
            String Area = TextArea.Text;
            String Post = TextPost.Text;

            Session["division"] = Division;
            Session["thana"] = Thana;
            Session["flat"] = Flat;
            Session["house"] = House;
            Session["road"] = Road;
            Session["area"] = Area;
            Session["post"] = Post;

            Response.Redirect("RegSecondPage.aspx");
        }
    }
}