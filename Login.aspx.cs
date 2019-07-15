using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String session_string = Session["Username"] as string;
        if (!String.IsNullOrEmpty(session_string))
        {
            Response.Redirect("~/Home.aspx");
        }
    }

    protected void username_Validate(object sender, ServerValidateEventArgs args)
    {
        if (txtUserName.Text.ToLower()[0] >= 'a' && txtUserName.Text.ToLower()[0] <= 'z') 
            args.IsValid = true;
        if (txtUserName.Text.ToLower()[0] >= '0' && txtUserName.Text.ToLower()[0] <= '9') 
            args.IsValid = false;

        String specialcase = "~!@#$%^&*()_+{}[]\\|;':\"<>,./?";
        foreach(char c in specialcase)
        {
            if (txtUserName.Text.Contains(c)) args.IsValid = false;
        }
    }

    protected void password_Validate(object sender, ServerValidateEventArgs args)
    {
        if (txtPassword.Text.Length < 8 || txtPassword.Text.Length > 16) args.IsValid = false;
        if (txtPassword.Text.ToLower()[0] < 'a' || txtPassword.Text.ToLower()[0] > 'z') args.IsValid = false;

        if (!(txtPassword.Text.Contains('*') || txtPassword.Text.Contains('!'))) args.IsValid = false;
        

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {        
        var userName = txtUserName.Text.ToLower();
        var password = txtPassword.Text.ToLower().GetHashCode();
 
        if (IsPostBack)
        {        
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select customerid, username, password from Customer where username='"+userName+"'";
            SqlCommand comd = new SqlCommand(checkUser, conn);
            SqlDataReader myReader = comd.ExecuteReader();
            if (myReader.Read() != false)
            {
                Session["Username"] = userName;
                Session["UserID"] = myReader["CustomerID"];
                string user = (string) myReader["Username"];
                FormsAuthentication.RedirectFromLoginPage(userName, true);
                
                if ( user == "haobui1994")
                {
                    Response.Redirect("~/Admin/AdminPage.aspx");

                }
                Response.Redirect("~/AuthenticatedPages/LoginSuccess.aspx");
            }
            else        
            {
                Response.Write(@"<script language='javascript'>alert('Invalid Username or Password.')</script>");
            }
            conn.Close();
        }
        
    }
}
