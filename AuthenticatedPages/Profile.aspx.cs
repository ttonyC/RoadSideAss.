using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // get current user name
        var userName = HttpContext.Current.User.Identity.Name;
        // connect to database
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string selectData = "SELECT * FROM customer WHERE Username='" + userName + "'";
        SqlCommand comd = new SqlCommand(selectData, conn);
        using (SqlDataReader myReader = comd.ExecuteReader())
        {
            // while command worked, assign value to Label controls
            while (myReader.Read())
            {
                lblName.Text = myReader["FirstName"] + " " + myReader["LastName"];
                lblDoB.Text = myReader["DoB"].ToString();
                lblGender.Text = Convert.ToInt32(myReader["Gender"]) == 0 ? "Male" : "Female";
                lblAddress.Text = myReader["Address"].ToString();
                lblEmail.Text = myReader["Email"].ToString();
                lblPhone.Text = myReader["Phone"].ToString();
                lblInsurance.Text = myReader["Insurance"].ToString();
                lblLicense.Text = myReader["License"].ToString();
            }
        }
        // close connection 
        conn.Close();

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        if (IsValid)
            Server.Transfer("EditProfile.aspx");
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var userName = Session["Username"];

        // connect to database
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string deleteUser = "DELETE FROM Customer WHERE Username='" + userName + "'";
        SqlCommand comd = new SqlCommand(deleteUser, conn);
        comd.ExecuteNonQuery();
        conn.Close();
        Session.Clear();
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();



    }

}
