using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetFundamentals.Demo
{
    public partial class ProfileProperties : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            if (IsPostBack)
            {
                lblFirstName.Text = Profile.MandatoryInfo.FirstName;
                lblLastName.Text = Profile.MandatoryInfo.LastName;
                lblDOB.Text = Profile.OptionalInfo.DateOfBirth.ToShortDateString();
                lblAddress.Text = Profile.OptionalInfo.Address;
            }
        }

        protected void btnDisplayProfile_Click(object sender, EventArgs e)
        {
            Profile.MandatoryInfo.FirstName = "Alan";
            Profile.MandatoryInfo.LastName = "Jackson";
            Profile.OptionalInfo.DateOfBirth = new DateTime(1990, 1, 1);
            Profile.OptionalInfo.Address = "Cheltenham, UK";
        }
    }
}
