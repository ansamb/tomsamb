using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class RozkladLotow : System.Web.UI.Page
{
    SqlDataReader odczytaj;
    SqlConnection polaczenie = new SqlConnection(" Server=SAMSUNG\\SQLEXPRESS;Database=SystemRezerwacjiBiletow;" + "Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {



            SqlCommand komenda = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '1' and '6'", polaczenie);
            SqlCommand komendaDruga = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '7' and '12'", polaczenie);
            SqlCommand komendaTrzecia = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '13' and '16'", polaczenie);
            SqlCommand komendaCzwarta = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '17' and '20'", polaczenie);
            SqlCommand komendaPiata = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '21' and '23'", polaczenie);
            SqlCommand komendaSzosta = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '24' and '26'", polaczenie);
            SqlCommand komendaSiodma = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '27' and '30'", polaczenie);
            SqlCommand komendaOsma = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '31' and '34'", polaczenie);
            SqlCommand komendaDziewiata = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '35' and '38'", polaczenie);
            SqlCommand komendaDziesiata = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '39' and '42'", polaczenie);
            SqlCommand komendaJedenasta = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '43' and '47'", polaczenie);
            SqlCommand komendaDwunasta = new SqlCommand("	SELECT g.IDgodziny,g.godzinyPoranne,g.godzinyWieczorne,t.TypPołączenia,m.miasto FROM GodzinyRozkladowLotow g INNER JOIN TypyPołączenia t on g.IDTypyPołączenia=t.IDTypyPołączenia INNER JOIN MIASTA m on g.IDmiasta=m.IDmiasta WHERE IDgodziny between '48' and '52'", polaczenie);
            SqlCommand komendaTrzynasta = new SqlCommand("	SELECT IDMiasWyl, MiasWyl FROM MiasWylo ", polaczenie);
            //   SqlCommand komendaCzternasta = new SqlCommand("SELECT IDMiasPrz, MiasPrz FROM MiasPrzy", polaczenie);

            try
            {
                polaczenie.Open();
                odczytaj = komenda.ExecuteReader();
                Repeater1.DataSource = odczytaj;
                Repeater1.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaDruga.ExecuteReader();
                Repeater2.DataSource = odczytaj;
                Repeater2.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaTrzecia.ExecuteReader();
                Repeater3.DataSource = odczytaj;
                Repeater3.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaCzwarta.ExecuteReader();
                Repeater4.DataSource = odczytaj;
                Repeater4.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaPiata.ExecuteReader();
                Repeater5.DataSource = odczytaj;
                Repeater5.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaSzosta.ExecuteReader();
                Repeater6.DataSource = odczytaj;
                Repeater6.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaSiodma.ExecuteReader();
                Repeater7.DataSource = odczytaj;
                Repeater7.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaOsma.ExecuteReader();
                Repeater8.DataSource = odczytaj;
                Repeater8.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaDziewiata.ExecuteReader();
                Repeater9.DataSource = odczytaj;
                Repeater9.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaDziesiata.ExecuteReader();
                Repeater10.DataSource = odczytaj;
                Repeater10.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaJedenasta.ExecuteReader();
                Repeater11.DataSource = odczytaj;
                Repeater11.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaDwunasta.ExecuteReader();
                Repeater12.DataSource = odczytaj;
                Repeater12.DataBind();
                odczytaj.Close();
                polaczenie.Close();

                polaczenie.Open();
                odczytaj = komendaTrzynasta.ExecuteReader();
                MW.DataValueField = "IDMiasWyl";
                MW.DataTextField = "MiasWyl";
                MW.DataSource = odczytaj;
                MW.DataBind();
                odczytaj.Close();
                polaczenie.Close();
                /*
                polaczenie.Open();
                odczytaj = komendaCzternasta.ExecuteReader();
                MP.DataValueField = "IDMiasPrz";
                MP.DataTextField = "MiasPrz";
                MP.DataSource = odczytaj;
                MP.DataBind();
                odczytaj.Close();
                polaczenie.Close(); */




            }






            catch
            {
                Response.Write("Błąd pobierania danych");
            }
            finally
            {

                polaczenie.Close();
            }
        }
    }

    
    /*
    public void BIND_MiastoWylotu()
    {

        SqlCommand komendaTrzynasta = new SqlCommand("	SELECT IDMiasWyl, MiasWyl FROM MiasWylo ", polaczenie);

        polaczenie.Open();
        odczytaj = komendaTrzynasta.ExecuteReader();
        MW.DataValueField = "IDMiasWyl";
        MW.DataTextField = "MiasWyl";
        MW.DataSource = odczytaj;
        MW.DataBind();
        odczytaj.Close();
        polaczenie.Close();

    } */
    
    public void BIND_MiastoPrzylotu()
    {
        SqlCommand komendaCzternasta = new SqlCommand("SELECT IDMiasPrz, MiasPrz FROM MiasPrzy WHERE IDMiasWyl='"+MW.SelectedValue + "'", polaczenie);

        polaczenie.Open();
        odczytaj = komendaCzternasta.ExecuteReader();
        MP.DataValueField = "IDMiasPrz";
        MP.DataTextField = "MiasPrz";
        MP.DataSource = odczytaj;
        MP.DataBind();
        odczytaj.Close();
        polaczenie.Close();

    }




    
    
    protected void MW_SelectedIndexChanged1(object sender, EventArgs e)
    {
        BIND_MiastoPrzylotu();
    }
}
