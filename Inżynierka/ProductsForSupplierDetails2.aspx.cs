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
    public partial class ProductsForSupplierDetails2 : System.Web.UI.Page
    {
        SqlConnection myConnection = new SqlConnection(" Server=SAMSUNG\\SQLEXPRESS;Database=SystemRezerwacjiBiletow;" + "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {       // Over here we fetch the datatable from session i.e. stored in previous page and               //passed here 

                DataTable dtselectedRows1 = Session["dtgetselectedRecords1"] as DataTable;
                xSelected.DataSource = dtselectedRows1;
                xSelected.DataBind();

                DataTable dtselectedRows2 = Session["dtgetselectedRecords2"] as DataTable;
                xSelected1.DataSource = dtselectedRows2;
                xSelected1.DataBind();


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

    }
}