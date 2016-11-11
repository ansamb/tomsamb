using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Inżynierka
{
    public partial class About : System.Web.UI.Page
    {
        
        SqlDataReader odczytaj;
        SqlConnection polaczenie = new SqlConnection(" Server=SAMSUNG\\SQLEXPRESS;Database=SystemRezerwacjiBiletow;" + "Integrated Security=True");
        string connString = " Server=SAMSUNG\\SQLEXPRESS;Database=SystemRezerwacjiBiletow;" + "Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            




                SqlCommand komendaTrzynasta = new SqlCommand("	SELECT IDMiasWyl, MiasWyl FROM MiasWylo ", polaczenie);
                //   SqlCommand komendaCzternasta = new SqlCommand("SELECT IDMiasPrz, MiasPrz FROM MiasPrzy", polaczenie);
                if (!IsPostBack)
                {

                    SqlConnection sqlConn = new SqlConnection(connString);
                    sqlConn.Open();
                    SqlCommand sqlCommand = new SqlCommand("updateShedule", sqlConn);
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                      try
                      {
                          //Just execute the Query directly
                          sqlCommand.ExecuteNonQuery();
                         
                         // lblMessage.Text = "Record updated successfully!";
                      }
                      catch
                      {
                         // lblMessage.Text = "Record does not exist!";
                      }
                  

                    SetImageUrl();
                    CheckBox1.Checked = false;
                    DataPrzylotu.Enabled = false;
                    try
                    {



                        polaczenie.Open();
                        odczytaj = komendaTrzynasta.ExecuteReader();
                        MW1.DataValueField = "IDMiasWyl";
                        MW1.DataTextField = "MiasWyl";
                        MW1.DataSource = odczytaj ;
                        MW1.DataBind();
                        MW1.Items.Insert(0, new ListItem("wybierz miasto", "0"));
                        odczytaj.Close();
                        polaczenie.Close();
                        /*
                        polaczenie.Open();
                        odczytaj = komendaCzternasta.ExecuteReader();
                        MP1.DataValueField = "IDMiasPrz";
                        MP1.DataTextField = "MiasPrz";
                        MP1.DataSource = odczytaj;
                        MP1.DataBind();
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
            

            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            
            }
        }


        /*
        public void BIND_MiastoWylotu()
        {

            SqlCommand komendaTrzynasta = new SqlCommand("	SELECT IDMiasWyl, MiasWyl FROM MiasWylo ", polaczenie);

            polaczenie.Open();
            odczytaj = komendaTrzynasta.ExecuteReader();
            MW1.DataValueField = "IDMiasWyl";
            MW1.DataTextField = "MiasWyl";
            MW1.DataSource = odczytaj;
            MW1.DataBind();
            odczytaj.Close();
            polaczenie.Close();

        } */

        private void SetImageUrl()
        {
            // Create an instance of Random class
            Random _rand = new Random();
            // Generate a random number between 1 and 8
            int i = _rand.Next(1, 8);
            // Set ImageUrl using the generated random number
            Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
        }

        public void BIND_MiastoPrzylotu1()
        {
            SqlCommand komendaCzternasta = new SqlCommand("SELECT IDMiasPrz, MiasPrz FROM MiasPrzy WHERE IDMiasWyl='" + MW1.SelectedValue + "'", polaczenie);

            polaczenie.Open();
            odczytaj = komendaCzternasta.ExecuteReader();
            MP1.DataValueField = "IDMiasPrz";
            MP1.DataTextField = "MiasPrz";
            MP1.DataSource = odczytaj;
            MP1.DataBind();
            MP1.Items.Insert(0, new ListItem("wybierz miasto", "0"));
            odczytaj.Close();
            polaczenie.Close();

        }






        protected void MW1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            BIND_MiastoPrzylotu1();

            if (MW1.SelectedIndex == 0)
            {

                MP1.Enabled = false;
                MP1.SelectedIndex = 0;
                //ImageButton1.Enabled = false;
                //ImageButton2.Enabled = false;
                Calendar1.Visible = false;
                Calendar2.Visible = false;

            }
            else
            {
                MP1.Enabled = true;
            }
           
           
            

            
        }

        protected void MP1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (MP1.SelectedIndex == 0)
            {
                MW1.SelectedIndex = 0;
                MP1.Enabled = false;

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }


            if (MW1.SelectedIndex == 0   )
            {
                Calendar1.Visible = false;
                

            }
            if (MP1.SelectedIndex == 0)
            {
                Calendar1.Visible = false;
                

            }
             


        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }

            if (MW1.SelectedIndex == 0 )
            {
                Calendar2.Visible = false;


            }

            if (MP1.SelectedIndex == 0)
            {
                Calendar2.Visible = false;


            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DataWylotu.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            DataPrzylotu.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime maxorderdate = new DateTime();
            maxorderdate = DateTime.Now.AddMonths(3);

            if (e.Day.Date <= DateTime.Now || e.Day.Date > maxorderdate)
            {



                e.Cell.BackColor = System.Drawing.Color.Aqua;
                e.Day.IsSelectable = false;


            }




        }

        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {

            
            String DatW = DataWylotu.Text;
           



            
            DateTime maxorderdate = new DateTime();
            maxorderdate = DateTime.Now.AddMonths(3);


            if (e.Day.Date < DateTime.Now || e.Day.Date > maxorderdate || 
                
                (DatW != "" &&  e.Day.Date < Convert.ToDateTime(DatW)))
            {



                e.Cell.BackColor = System.Drawing.Color.Aqua;
                e.Day.IsSelectable = false;

                
            }
       }

        protected void DataWylotu_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
            string url;
            if (CheckBox1.Checked == true)
            {
                url = "Result2.aspx?mw=" + MW1.SelectedItem +
                             "&mp=" + MP1.SelectedItem +
                             "&dataW=" + DataWylotu.Text +
                             "&iloscOsob=" + IloscOsob.Text +
                             "&dataP=" + DataPrzylotu.Text;

            }
            else
            {
                url = "Result.aspx?mw=" + MW1.SelectedItem +
                             "&mp=" + MP1.SelectedItem +
                             "&dataW=" + DataWylotu.Text +
                             "&iloscOsob=" + IloscOsob.Text;

            }
            
            Response.Redirect(url);
            

        }

        

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();
        }

        protected void IloscOsob_TextChanged(object sender, EventArgs e)
        {
            if (!System.Text.RegularExpressions.Regex.IsMatch(IloscOsob.Text, @"^[1-180]*$"))
            {
                IloscOsob.Text = "1";
            }

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                DataPrzylotu.Enabled = true;
                Calendar2.Enabled = true;
            }
            else
            {
                DataPrzylotu.Enabled = false;
                Calendar2.Enabled = false;
            }
        }

        protected void IsTextboxValid(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = CheckBox1.Checked;

        }

       


       

        


        


      
       
    }
   
}

