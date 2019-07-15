using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddCar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["CarName"] = txtCarName.Text;
        Session["Expire"] = false;
    }

    protected void Cancel(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        var userID = Session["UserID"];
        var carName = txtCarName.Text;
        var carMake = txtMake.Text;
        var carModel = txtModel.Text;
        var carYear = txtYear.Text;
        var carMileage = txtMiles.Text;
        var CarEngineSize = txtEsize.Text;

        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string addCar = "INSERT INTO Car(CustomerID, CarName, CarMake, Model, Year, CarMileage, CarEngineSize) VALUES('" + userID + "','" + carName + "', '" + carMake + "', '" + carModel + "', '" + carYear + "', '" + carMileage + "', '" + CarEngineSize + "')";
            SqlCommand comd = new SqlCommand(addCar, conn);
            comd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Vehicle Added!')</script>");

        }
    }
}