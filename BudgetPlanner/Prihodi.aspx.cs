using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Financije : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
            Response.Redirect("Login.aspx");
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistracijaConnectionString"].ConnectionString);
        conn.Open();
        string selectPrihod = @"SELECT sijecanj,veljaca,ozujak,travanj,svibanj,lipanj,srpanj,kolovoz,rujan,listopad,studeni,prosinac FROM Financije WHERE tip = 'prihod' and Korisnik = @Korisnik ";
        SqlCommand com = new SqlCommand(selectPrihod, conn);

        string username = (string)(Session["New"]);
        com.Parameters.AddWithValue("@Korisnik", username);


        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            if (!IsPostBack)
            {
                TextBoxSIJ.Text = reader.GetValue(0).ToString();
                TextBoxVELJ.Text = reader.GetValue(1).ToString();
                TextBoxOZU.Text = reader.GetValue(2).ToString();
                TextBoxTRA.Text = reader.GetValue(3).ToString();
                TextBoxSVI.Text = reader.GetValue(4).ToString();
                TextBoxLIP.Text = reader.GetValue(5).ToString();
                TextBoxSRP.Text = reader.GetValue(6).ToString();
                TextBoxKOL.Text = reader.GetValue(7).ToString();
                TextBoxRUJ.Text = reader.GetValue(8).ToString();
                TextBoxLIS.Text = reader.GetValue(9).ToString();
                TextBoxSTU.Text = reader.GetValue(10).ToString();
                TextBoxPRO.Text = reader.GetValue(11).ToString();
            }
        }
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void ButtonSpremi_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistracijaConnectionString"].ConnectionString);
            conn.Open();
            string insertTrosak = @"IF EXISTS (SELECT * FROM Financije WHERE Tip = 'prihod' AND Korisnik = @Korisnik)
                              UPDATE Financije SET Tip = @Tip, Sijecanj = @Sijecanj,Veljaca = @Veljaca,Ozujak = @Ozujak,Travanj = @Travanj,Svibanj = @Svibanj,Lipanj = @Lipanj,Srpanj = @Srpanj,Kolovoz = @Kolovoz,Rujan = @Rujan,Listopad = @Listopad,Studeni = @Studeni,Prosinac = @Prosinac,Korisnik = @Korisnik 
                              WHERE Tip = 'prihod' AND Korisnik = @Korisnik
                              ELSE
                              INSERT INTO Financije (Tip,Sijecanj,Veljaca,Ozujak,Travanj,Svibanj,Lipanj,Srpanj,Kolovoz,Rujan,Listopad,Studeni,Prosinac,Korisnik)    
                              VALUES (@Tip,@Sijecanj,@Veljaca,@Ozujak,@Travanj,@Svibanj,@Lipanj,@Srpanj,@Kolovoz,@Rujan,@Listopad,@Studeni,@Prosinac,@Korisnik)";
            SqlCommand com = new SqlCommand(insertTrosak, conn);

            string username = (string)(Session["New"]);

            com.Parameters.AddWithValue("@Tip", "prihod");
            com.Parameters.AddWithValue("@Sijecanj", TextBoxSIJ.Text);
            com.Parameters.AddWithValue("@Veljaca", TextBoxVELJ.Text);
            com.Parameters.AddWithValue("@Ozujak", TextBoxOZU.Text);
            com.Parameters.AddWithValue("@Travanj", TextBoxTRA.Text);
            com.Parameters.AddWithValue("@Svibanj", TextBoxSVI.Text);
            com.Parameters.AddWithValue("@Lipanj", TextBoxLIP.Text);
            com.Parameters.AddWithValue("@Srpanj", TextBoxSRP.Text);
            com.Parameters.AddWithValue("@Kolovoz", TextBoxKOL.Text);
            com.Parameters.AddWithValue("@Rujan", TextBoxRUJ.Text);
            com.Parameters.AddWithValue("@Listopad", TextBoxLIS.Text);
            com.Parameters.AddWithValue("@Studeni", TextBoxSTU.Text);
            com.Parameters.AddWithValue("@Prosinac", TextBoxPRO.Text);
            com.Parameters.AddWithValue("@Korisnik", username);

            com.ExecuteNonQuery();

            Response.Write("Prihodi su uspješno zapisani!" + username);

            conn.Close();
            Response.Redirect("Prihodi.aspx");
        }
        catch (Exception ex)
        {

            //Response.Write("Error:" + ex.ToString());
            RegisterStartupScript("alertBox1", "<script type='text/javascript'>alert('Molimo unesite brojeve u pravom formatu!');</script>");
        }

    }

    protected void TextBoxSIJ_TextChanged(object sender, EventArgs e)
    {

    }
}