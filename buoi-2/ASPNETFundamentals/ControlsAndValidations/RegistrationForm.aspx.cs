using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetFundamentals.ControlsAndValidations
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cmdRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Your registration has been sent.";
            }
            else
            {
                lblMessage.Text = string.Empty;
            }
        }
        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "You have cancelled the registration.";
        }
        protected void vldUserMessage_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                if (args.Value.Length > 20)
                    args.IsValid = false;
                else
                    args.IsValid = true;
            }
            catch
            {
                args.IsValid = false;
            }
        }
    }
}
