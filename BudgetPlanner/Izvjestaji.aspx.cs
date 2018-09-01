using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Izvjestaji : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        Response.Redirect("Login.aspx");
        
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistracijaConnectionString"].ConnectionString);
        conn.Open();
        string selectProsjecni = @"select ROUND(((sijecanj + veljaca + ozujak + travanj + svibanj + lipanj + srpanj + kolovoz + rujan + listopad + studeni + prosinac)/12),2) FROM Financije WHERE Korisnik = @Korisnik and tip = 'prihod';

                                   select max (prihod) from(select sijecanj as prihod from financije where korisnik = @Korisnik
						           union select veljaca as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select ozujak as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select travanj as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select svibanj as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select lipanj as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select srpanj as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select kolovoz as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select rujan as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select listopad as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select studeni as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select prosinac as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod') t;

                                   select min (prihod) from(select sijecanj as prihod from financije where korisnik = @Korisnik
						           union select veljaca as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select ozujak as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select travanj as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select svibanj as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select lipanj as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select srpanj as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select kolovoz as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select rujan as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select listopad as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select studeni as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod'
						           union select prosinac as prihod from financije WHERE korisnik = @Korisnik and tip = 'prihod') t;

                                   select (sijecanj + veljaca + ozujak + travanj + svibanj + lipanj + srpanj + kolovoz + rujan + listopad + studeni + prosinac) FROM financije WHERE Korisnik = @Korisnik and tip = 'prihod'
                
                                   SELECT ROUND(((sum(sijecanj) + sum(veljaca)+ sum(ozujak)+ sum(travanj)+ sum(svibanj)+ sum(lipanj)+ sum(srpanj)+ sum(kolovoz)+ sum(rujan)+ sum(listopad)+ sum(studeni)+ sum(prosinac))/12),2) FROM financije WHERE korisnik = @Korisnik and tip = 'trosak';
                    
                                   SELECT max (trosak) from 
                                   (select sum(sijecanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(veljaca) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(ozujak) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak' 
                                   union select sum(travanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(svibanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(lipanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(srpanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(kolovoz) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(rujan) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(listopad) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(studeni) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak' 
                                   union select sum(prosinac) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak') t;

                                   SELECT min (trosak) from 
                                   (select sum(sijecanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(veljaca) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(ozujak) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak' 
                                   union select sum(travanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(svibanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(lipanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(srpanj) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(kolovoz) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(rujan) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(listopad) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak'
                                   union select sum(studeni) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak' 
                                   union select sum(prosinac) as trosak FROM financije WHERE korisnik = @Korisnik and tip = 'trosak') t;

                                   SELECT (sum(sijecanj) + sum(veljaca)+ sum(ozujak)+ sum(travanj)+ sum(svibanj)+ sum(lipanj)+ sum(srpanj)+ sum(kolovoz)+ sum(rujan)+ sum(listopad)+ sum(studeni)+ sum(prosinac)) FROM financije WHERE korisnik = @Korisnik and tip = 'trosak';

                                   SELECT TOP 1 Grupa
                                   FROM (SELECT grupa, (sijecanj+veljaca) AS zbroj FROM financije where korisnik = @Korisnik and tip = 'trosak' ) t 
                                   order by zbroj desc;

                                   SELECT TOP 1 Grupa
                                   FROM (SELECT grupa, (sijecanj+veljaca) AS zbroj FROM financije where korisnik = @Korisnik and tip = 'trosak' ) t 
                                   order by zbroj asc;

                                   SELECT CONCAT(ROUND((ISNULL(sum(prihod),0) * 100.0 / (CASE WHEN (sum(prihod)+sum(trosak)) = 0 then 1 else (sum(prihod)+sum(trosak)) end) ),2)  , '%') AS prihodi
                                   FROM
                                   (SELECT sum(sijecanj+veljaca+ozujak+travanj+svibanj+lipanj+srpanj+kolovoz+rujan+studeni+prosinac) as prihod, null as trosak
                                   from financije
                                   where tip = 'prihod' and korisnik = @Korisnik
                                   union 
                                   SELECT null as prihod, sum(sijecanj+veljaca+ozujak+travanj+svibanj+lipanj+srpanj+kolovoz+rujan+studeni+prosinac) as trosak
                                   from financije
                                   where tip = 'trosak' and korisnik = @Korisnik) t;

                                   SELECT CONCAT(ROUND((ISNULL(sum(trosak),0) * 100.0 / (CASE WHEN (sum(prihod)+sum(trosak)) = 0 then 1 else (sum(prihod)+sum(trosak)) end)  ),2) , '%') AS troskovi
                                   FROM
                                   (SELECT sum(sijecanj+veljaca+ozujak+travanj+svibanj+lipanj+srpanj+kolovoz+rujan+studeni+prosinac) as prihod, null as trosak
                                   from financije
                                   where tip = 'prihod' and korisnik = @Korisnik
                                   union 
                                   SELECT null as prihod, sum(sijecanj+veljaca+ozujak+travanj+svibanj+lipanj+srpanj+kolovoz+rujan+studeni+prosinac) as trosak
                                   from financije
                                   where tip = 'trosak' and korisnik = @Korisnik) t";
        SqlCommand com = new SqlCommand(selectProsjecni, conn);

        string username = (string)(Session["New"]);
        com.Parameters.AddWithValue("@Korisnik", username);

        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            TextBoxProsjecniMjesecni.Text = reader.GetValue(0).ToString();
            
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxMaksimalni.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxMinimalni.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxUkupniPrihodi.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxProsjecnjaPotrosnja.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxMaksimalnaPotrosnja.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxMinimalnaPotrosnja.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxUkupnaPotrosnja.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxNajvecaKategorija.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxNajmanjaKategorija.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxOdnosi.Text = reader.GetValue(0).ToString();
            }
        }
        if (reader.NextResult())
        {
            while (reader.Read())
            {
                TextBoxOdnosi2.Text = reader.GetValue(0).ToString();
            }
        }
        reader.Close();
        conn.Close();
        string prihodPostotak = TextBoxOdnosi.Text;
        string trosakPostotak = TextBoxOdnosi2.Text;
        string str = "Prihodi: " + prihodPostotak +"</br>"+ " Troškovi: " + trosakPostotak ;
        LabelOdnos.Text = str;

        /*SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistracijaConnectionString"].ConnectionString);
        conn2.Open();
        string selectMaksimalni = @"select (sijecanj+veljaca)/3 FROM Financije WHERE Korisnik = @Korisnik and tip = 'prihod' ";
        SqlCommand com2 = new SqlCommand(selectMaksimalni, conn2);

        com2.Parameters.AddWithValue("@Korisnik", username);
        SqlDataReader reader2 = com2.ExecuteReader();
        while (reader2.Read())
        {
            TextBoxMaksimalni.Text = reader.GetValue(0).ToString();
        }
        conn2.Close();*/
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
}