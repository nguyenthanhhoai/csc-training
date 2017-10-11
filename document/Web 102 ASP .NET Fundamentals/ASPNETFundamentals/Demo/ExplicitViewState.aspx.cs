using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetFundamentals.Demo
{
    public partial class ExplicitViewState : System.Web.UI.Page
    {
        [Serializable]
        public class Employee
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public Employee(string firstName, string lastName)
            {
                FirstName = firstName;
                LastName = lastName;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Employee emp = new Employee("Them", "Pham");
            ViewState["EmpInfo"] = emp;
        }

        protected void btnSetViewState_Click(object sender, EventArgs e)
        {
            var empInfo = ViewState["EmpInfo"];
            if (empInfo != null)
            {
                Employee emp = empInfo as Employee;
                lblFirstName.Text = emp.FirstName;
                lblLastName.Text = emp.LastName;
            }
        }
    }
}
