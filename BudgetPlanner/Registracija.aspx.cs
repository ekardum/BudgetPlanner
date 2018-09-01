using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registracija : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistracijaConnectionString"].ConnectionString);
            conn.Open();
            string usernametextbox = TextBoxUsername.Text;
            string checkuser = "select count(*) from korisnici where username= '"+ usernametextbox + "' ";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            //Response.Write(checkuser);
            if (temp == 1)
            {
                Response.Write("<div class='registracija-danger'>Korisničko ime već postoji! </div>");
            }
            
        }
    }

    protected void ButtonRegistracija_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistracijaConnectionString"].ConnectionString);
            conn.Open();
            string insertUser = "insert into korisnici(Username,Ime,Prezime,Email,Password) values(@username, @ime, @prezime, @email, @password)";
            SqlCommand com = new SqlCommand(insertUser, conn);
            com.Parameters.AddWithValue("@username", TextBoxUsername.Text);
            com.Parameters.AddWithValue("@ime", TextBoxIme.Text);
            com.Parameters.AddWithValue("@prezime", TextBoxPrezime.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPassword.Text);

            com.ExecuteNonQuery();
            /*Response.Redirect("Login.aspx");*/
            //Response.Write("Registracija je uspješna!");
            Response.Write("<div class='registracija-success'>Registracija je uspješna! </div>");
            Response.AddHeader("REFRESH", "3;URL=Login.aspx");

            conn.Close();
        }
        catch (Exception ex)
        {
            //Response.Write("Error:" + ex.ToString());
            //Response.Write("Korisničko ime već postoji!");
        }
    }

    protected void ButtonOdustaniReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}