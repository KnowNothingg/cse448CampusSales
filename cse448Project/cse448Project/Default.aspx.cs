using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cse448Project
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            string d = "<table class='table table-striped table-bordered'>";
            api a = new api();
            foreach(DataRow r in a.sqlExecDataTable("spGetUsers").Rows)
            {
                d += "<tr><td>" + r["UserId"] + "</td><td>" + r["Email"] + "</td></tr>";
            }
            d += "</table>";
            lblUsers.Text = d;
        }
    }
}