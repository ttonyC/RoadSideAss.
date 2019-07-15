using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String session_string = Session["Username"] as string;
        if (!String.IsNullOrEmpty(session_string))
        {
            if (session_string == "haobui1994" || session_string == "tamdang1997")
            {
                Transaction.Visible = true;
                lblUser.Text = "Admin " + session_string;
            }
            else
            {
                UserHistory.Visible = true;
                AddCar.Visible = true;
                lblUser.Text = "User " + session_string;
            }
            SignUp.Visible = false;
            LogIn.Visible = false;
            ProfileDropdown.Visible = true;
            
        }
        else
        {
            SignUp.Visible = true;
            LogIn.Visible = true;
        }
        setActivePage();
    }

    public void setActivePage()
    {
        switch(Page.Title)
        {
            case "Home":
                Home.Attributes.Add("class", "nav-link active");
                break;
            case "Services": 
                Services.Attributes.Add("class", "nav-link active");
                break;
            case "Feedback Form Page":
                Feedback.Attributes.Add("class", "nav-link active");
                break;
            case "About Us":
                AboutUs.Attributes.Add("class", "nav-link active");
                break;
            case "Sign Up":
                SignUp.Attributes.Add("class", "nav-link active");
                break;
            case "Login":
                LogIn.Attributes.Add("class", "nav-link active");
                break;
        }
    }
}
