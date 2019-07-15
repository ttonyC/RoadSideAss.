using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String session_string = Session["Username"] as string;
            if (String.IsNullOrEmpty(session_string))
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("SELECT*FROM Customer WHERE Username = '" + Session["Username"] + "'", connection);
                    connection.Open();
                    using (SqlDataReader myReader = cmd.ExecuteReader())
                    {
                        // while command worked, assign value to Label controls
                        while (myReader.Read())
                        {
                            Name.Text = myReader["FirstName"] + " " + myReader["LastName"];
                            DOB.Text = Convert.ToDateTime(myReader["DoB"]).ToString("MM/dd/yyyy");
                            bool gender = Convert.ToInt32(myReader["Gender"]) == 0 ? true : false;
                            Gender.SelectedIndex = gender == true ? 0 : 1;
                            Home_Address.Text = myReader["Address"].ToString();
                            Email.Text = myReader["Email"].ToString();
                            Phone_Number.Text = myReader["Phone"].ToString();
                            Insurance_Number.Text = myReader["Insurance"].ToString();
                            License_Number.Text = myReader["License"].ToString();
                        }
                        myReader.Close();
                    }
                    connection.Close();
                }
            }
        }

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        String firstname, lastname ="", dob, home_address, email, phone, insurance, license;
        int gender;
        String[] name_parts = Name.Text.Split(' ');
        //Splitting first name last name logic
        firstname = name_parts[0];
        if (name_parts.Length == 2)
            lastname = name_parts[1];
        else if (name_parts.Length > 2)
            for (int i = 1; i < name_parts.Length; i++)
                lastname += name_parts[i];

        //store data into strings
        String username = Session["Username"] as string;
        dob = DOB.Text;
        home_address = Home_Address.Text;
        email = Email.Text;
        gender = Gender.SelectedIndex == 0 ? 0 : 1;
        insurance = Insurance_Number.Text;
        license = License_Number.Text;
        phone = Phone_Number.Text;

        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("UPDATE Customer SET FirstName='" + firstname + "' , LastName='" +
                lastname + "', Email='" + email + "', Address='" + home_address + "', Phone='" +
                phone + "', DoB='" + dob + "', Gender='" + gender + "', Insurance='" + insurance +
                "', License='" + license + "' WHERE Username='" + username + "'" , connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        Response.Redirect("Profile.aspx");
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile.aspx");
    }
}