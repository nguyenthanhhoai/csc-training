using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetFundamentals.Demo
{
    public partial class CrossPagePostingReceiver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                string sValue = (PreviousPage.FindControl("TextBox1") as TextBox).Text;
                Response.Write(string.Format("Text received from Sender: {0}", sValue));
            }
        }
    }
}
