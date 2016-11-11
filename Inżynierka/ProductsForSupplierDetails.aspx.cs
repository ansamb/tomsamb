using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Net.Mail;


namespace Inżynierka
{
    public partial class Results3 : System.Web.UI.Page
    {
        SqlConnection myConnection = new SqlConnection(" Server=SAMSUNG\\SQLEXPRESS;Database=SystemRezerwacjiBiletow;" + "Integrated Security=True");
    
        protected void Page_Load(object sender, EventArgs e)
        {
             
            //string text;

            // Get the value of TextBox1 from the page that 
            // posted to this page.
            //   // text = ((Label)PreviousPage.FindControl("lblMsg")).Text;
            //    text = ((RadioButton)PreviousPage.FindControl("selectedvalue").ToString;


            //     Check for an empty string.
            //    if (text != "")
            //        PostedLabel.Text = "The string posted from the previous page is "
            //                           + text + ".";
            //    else
            //        PostedLabel.Text = "An empty string was posted from the previous page.";

            //}

            // if (PreviousPage.Master != null)
            //{
            //    ContentPlaceHolder cph = (ContentPlaceHolder)PreviousPage.Master.FindControl("MainContent");
            //    Label  = (Label)cph.FindControl("lblMsg");
            //    lblMsg1.Text = lblMsg.Text;
            //}


            //this.PostedLabel.Text = "Podany tekst to: " + this.Request.QueryString["PodanyTekst"];



            //string text;

            //// Get the value of TextBox1 from the page that 
            //// posted to this page.
            //text = ((RadioButton)PreviousPage.FindControl("RowSelector"));

            //// Check for an empty string.
            //if (text != "")
            //    PostedLabel.Text = "The string posted from the previous page is "
            //                       + text + ".";
            //else
            //    PostedLabel.Text = "An empty string was posted from the previous page.";

            if (!IsPostBack)
            {       // Over here we fetch the datatable from session i.e. stored in previous page and               //passed here 

                DataTable dtselectedRows = Session["dtgetselectedRecords"] as DataTable;
                xSelected.DataSource = dtselectedRows;
                xSelected.DataBind();


            }



           
        }

        public void Button1_Click(object sender, EventArgs e)
        {
            // Check that four of the input values are not empty. If any of them
            // is empty, show a message to the user and rebind the DataGrid.
            //if (au_id.Value == "" || au_fname.Value == "" || 
            //   au_lname.Value == "" || phone.Value == "") 
            //{
            //   Message.InnerHtml = "ERROR: Null values not allowed for" +
            //      " Author ID, Name or Phone";
            //   Message.Style["color"] = "red";
            //   BindGrid();
            //   return;
            //}
            // Build a SQL Insert statement string for all the input-form
            // field values. 





            //String insertCmd = "insert into DaneUzytkownikow values (@Imie, @Nazwisko, @Email, @EmailPotwierdzający, @Komentarz)";
            //// Initialize the SqlCommand with the new SQL string 
            //// and the connection information.
            //SqlCommand myCommand = new SqlCommand(insertCmd, myConnection);
            //// Create new parameters for the SqlCommand object and
            //// initialize them to the input-form field values.
            //myCommand.Parameters.Add(new SqlParameter("@Imie",
            //   SqlDbType.VarChar, 20));
            //myCommand.Parameters["@Imie"].Value = ImieWpolu1.Value;

            //myCommand.Parameters.Add(new SqlParameter("@Nazwisko", 
            //   SqlDbType.VarChar, 20));
            //myCommand.Parameters["@Nazwisko"].Value = NazwiskoWpolu1.Value;

            //myCommand.Parameters.Add(new SqlParameter("@Email", 
            //   SqlDbType.VarChar, 50));
            //myCommand.Parameters["@Email"].Value =EmailWpolu1.Value;

            //myCommand.Parameters.Add(new SqlParameter("@EmailPotwierdzający", 
            //   SqlDbType.Char, 50));
            //myCommand.Parameters["@EmailPotwierdzający"].Value = EmailWpolu2.Value;

            //myCommand.Parameters.Add(new SqlParameter("@Komentarz", 
            //   SqlDbType.VarChar, 1000));
            //myCommand.Parameters["@Komentarz"].Value = KomentarzWpolu1.Value;
            //myCommand.Connection.Open();



            myConnection.Open();
            SqlCommand cmd = myConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into DaneUzytkownikow values('" + ImieWpolu1.Text + "' , '" + NazwiskoWpolu1.Text + "' ,'" + EmailWpolu1.Text + "','" + EmailWpolu2.Text + "','" + KomentarzWpolu1.Text + "')";
            cmd.ExecuteNonQuery();
            myConnection.Close();

            //MailMessage msg = new MailMessage();
            //msg.From = new MailAddress("didzejsambek@gmail.com");
            //msg.To.Add(EmailWpolu1.Text);
            //msg.Subject = txtSubject.Text;  
            //msg.Body= txtMessage.Text; 
            //msg.IsBodyHtml= true;

            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtp.gmail.com";
            //System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            //NetworkCred.UserName = "didzejsambek@gmail.com";
            //NetworkCred.Password= "";
            //smtp.UseDefaultCredentials = true;
            //smtp.Credentials= NetworkCred;
            //smtp.Port= 587;
            //smtp.EnableSsl= true;
            //smtp.Send(msg);

            
            ImieWpolu1.Text = string.Empty;
            NazwiskoWpolu1.Text = string.Empty;
            EmailWpolu1.Text = "";//string.Empty;
            EmailWpolu2.Text = string.Empty;
            KomentarzWpolu1.Text = string.Empty;

            GdyZamowi.Text = " <h1>Gratulacje!  </h1>  <br/>Rezerwacja potwierdzona.Możesz sprawdzić pocztę e-mail! lub przejść do wyszukiwarki połączeń aby dokonać kolejnej rezerwacji. <br/> Dziękujemy za skorzystanie z naszych usług.Pozdrawiamy i zachęcamy do dalszej współpracy.<h1> TomSam</h1> "; 
            
            ImieWpolu1.Visible = false;
            NazwiskoWpolu1.Visible = false;
            EmailWpolu1.Visible = false;
            EmailWpolu2.Visible = false;
            KomentarzWpolu1.Visible = false;

            Imie1.Visible = false;
            Nazwisko1.Visible = false;
            Email1.Visible = false;
            Email2.Visible = false;
            Komentarz1.Visible = false;
            Button1.Visible = false;
            

             
        }

        //void clear()
        //{

        //    ImieWpolu1.Text = "";
        //    NazwiskoWpolu1.Text = "";
        //    EmailWpolu1.Text = "";
        //    EmailWpolu2.Text = "";
        //    KomentarzWpolu1.Text = "";


        //}
             
    
        
        }



      // Test whether the new row can be added and  display the 
      // appropriate message box to the user.

           




        }

       
    

    //@{
    

    //var Imie1 = "";
    //var Nazwisko1 = "";
    //var Email1 = "";
    //var Email2 = "";
    //var Komentarz1 = "";

    //if(IsPost){
    //   Imie1 = Request.Form["Imie1"];
    //   Nazwisko1 = Request.Form["Nazwisko1"];
    //   Email1 = Request.Form["Email1"];
    //   Email2 = Request.Form["Email2"];
    //   Komentarz1 = Request.Form["Komentarz1"];

    //   var db = Database.Open("SystemRezerwacjiBiletow");
    //   var insertCommand = "INSERT INTO DaneUzytkownikow (Imie1, Nazwisko1, Email1,Email2,Komentarz1) Values(@0, @1, @2,@3,@4)";
    //   db.Execute(insertCommand, Imie1, Nazwisko1, Email1,Email2,Komentarz1);
    //   Response.Redirect("~/Movies");

    //    var ImieWpolu1 = "";
    //var NazwiskoWpolu1 = "";
    //var EmailWpolu1 = "";
    //var EmailWpolu2 = "";
    //var Komentarz1 = "";

    //if(IsPost){
    //   ImieWpolu1 = Request.Form["ImieWpolu1"];
    //   NazwiskoWpolu1 = Request.Form["NazwiskoWpolu1"];
    //   EmailWpolu1 = Request.Form["EmailWpolu1"];
    //   Email2 = Request.Form["EmailWpolu2"];
    //  KomentarzWpolu1 = Request.Form["KomentarzWpolu1"];

    //   var db = Database.Open("SystemRezerwacjiBiletow");
    //   var insertCommand = "INSERT INTO DaneUzytkownikow (ImieWpolu1, NazwiNazwiskoWpolu1sko1, EmailWpolu1,EmailWpolu2,KomentarzWpolu1) Values(@0, @1, @2,@3,@4)";
    //   db.Execute(insertCommand, ImieWpolu1, NazwiNazwiskoWpolu1sko1, EmailWpolu1,EmailWpolu2,KomentarzWpolu1);
       //Response.Redirect("~/Movies");


    



