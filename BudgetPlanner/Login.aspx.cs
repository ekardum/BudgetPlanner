using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistracijaConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from korisnici where username = '" + TextBoxLoginUser.Text + "' ";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPassword = "select password from Korisnici where username= '" + TextBoxLoginUser.Text + "' ";
            SqlCommand comPass = new SqlCommand(checkPassword, conn);
            string password = comPass.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBoxLoginPassword.Text)
            {
                Session["New"] = TextBoxLoginUser.Text;
                //Response.Write("Lozinka je točna!");
                Response.Redirect("Prihodi.aspx");
            }
            else
            {
                Response.Write("<div class='login-danger'>Pogrešno korisničko ime i/ili lozinka! </div>");
            }
        }
        else
        {
            //Response.Write("Korisničko ime ne postoji!");
            //RegisterStartupScript("alertBox1", "<script type='text/javascript'>alert('Korisničko ime ne postoji!');</script>");
            Response.Write("<div class='login-danger'>Pogrešno korisničko ime i/ili lozinka! </div>");
        }
    }

    protected void ButtonRegistrirajSe_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registracija.aspx");
    }
}