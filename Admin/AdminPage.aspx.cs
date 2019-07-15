using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        String text = "";
        if (e.Exception != null) {
            text = "An error has occured";
            e.ExceptionHandled = true;
        }
        else
        {
            text = "Cannot Update";
        }
        GridView1.DataBind();
    }

    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        Error_Label.Text = "";
        if (e.Exception != null)
        {
            Error_Label.Text = "An error has occured";
            e.ExceptionHandled = true;
        }
        else
        {
            Error_Label.Text = "Cannot Delete";
        }
        GridView1.DataBind();
    }
}