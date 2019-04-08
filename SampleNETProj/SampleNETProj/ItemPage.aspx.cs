using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace SampleNETProj
{
    public partial class ItemPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(! IsPostBack) loadItems(0);
        }

        private void loadItems(int pageNumber)
        {
            TableRow tr;
            TableCell td;
           
            foreach(ds.spGetItemsRow r in (new dsTableAdapters.spGetItemsTableAdapter()).GetData(5, 0))
            {
                tr = new TableRow();
                td = new TableCell();
                td.Text = r.UserName;
                tr.Cells.Add(td);

                td = new TableCell();
                td.Text = r.item_name;
                tr.Cells.Add(td);

                td = new TableCell();
                td.Text = "$" + r.price;
                tr.Cells.Add(td);

                td = new TableCell();
                if(r.Id.Equals(User.Identity.GetUserId()))
                {
                    td.Text = "";
                } else
                {
                    td.Text = "<a href = '#'> Buy </a>";
                }
                tr.Cells.Add(td);

                tblItems.Rows.Add(tr);
            }
        }
    }
}