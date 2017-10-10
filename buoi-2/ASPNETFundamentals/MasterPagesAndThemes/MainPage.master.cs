using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetFundamentals.MasterPagesAndThemes
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        public bool ShowTree
        {
            set { leftTree.Visible = value; }
            get { return leftTree.Visible; }
        }
    }
}
