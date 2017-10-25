using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Home_Rent_Management_System.HRMS
{
    public partial class CompleteReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            Label1.Text = (String)Session["track"];                       
        }
    }
}