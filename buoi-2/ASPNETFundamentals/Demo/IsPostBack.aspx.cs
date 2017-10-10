using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetFundamentals.Demo
{
    public partial class IsPostBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblIsPostBack.Text = "Yes";
            }
            else
            {
                lblIsPostBack.Text = "No";
            }
        }

        protected void btnPostBack_Click(object sender, EventArgs e)
        {

        }
    }
}
