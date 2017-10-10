using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetFundamentals.SiteNavigation
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnShow_Click(object sender, EventArgs e)
        {
            MainPage master = (MainPage)this.Master;
            master.ShowTree = true;
        }        
        protected void btnHide_Click(object sender, EventArgs e)
        {
            MainPage master = (MainPage)this.Master;
            master.ShowTree = false;
        }

    }
}
