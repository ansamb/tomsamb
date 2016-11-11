<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Inżynierka.Contact" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            Button1.Text="Wszystko ok!";
        }
        
        else
        {
            Button1.Text = "Sprawdź czego nie uzupełniłeś  lub co wprowadziłeś błędnie"; 
        }
    }
</script>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2>Skontaktuj się z nami telefonicznie lub poprzez formularz zgłoszeniowy.


        </h2>
        
    </hgroup>
    <article>
    <section class="contact">
        <header>
            <h3>Telefon:</h3>
        </header>
        <p>
            <span class="label">Główny:</span>
            <span>756-863-046</span>
        </p>
       
    </section>

    <section class="contact">
        <header>
            <h3>E-mail:</h3>
        </header>
        <p>
            &nbsp;<span><a href="TomSamBaza@example.com">TomSamBaza@example.com</a></span>
        </p>
        <p>
            &nbsp;</p>
        
    </section>

    <section class="contact">
        <header>
            <h3>Adres:</h3>
        </header>
        <p>
             
TomSam.com <br />
Souter Holdings Poland Sp. z o.o. <br />
skrytka pocztowa nr 117 <br />
03-976 Warszawa <br />
Polska
        </p>
    </section>
    </article>

    <aside>
        <p>
            <asp:Label ID="Imie" runat="server" Text="Label">Imię</asp:Label> <br />
            <asp:TextBox ID="ImieWpolu" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="SprawdzenieCzyWogolePodalesImie" ControlToValidate="ImieWpolu" runat="server" ErrorMessage="Nie podałeś swojego imienia!"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="walidacjaImieniaPodKatemZnakow" runat="server" ControlToValidate="ImieWpolu" ValidationExpression="^a-zA-Z+$" ErrorMessage="Twoje imię może zawierać jedynie litery!"></asp:RegularExpressionValidator>
           
        </p>
        <p>
            <asp:Label ID="Nazwisko" runat="server" Text="Label">Nazwisko</asp:Label> <br />
            <asp:TextBox ID="NazwiskoWpolu" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="SprawdzenieCzyWogolePodalesNazwisko" ControlToValidate="NazwiskoWpolu" runat="server" ErrorMessage="Nie podałeś swojego nazwiska!"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="walidacjaNazwiskaPodKatemZnakow" runat="server" ControlToValidate="NazwiskoWpolu" ValidationExpression="^a-zA-Z+$" ErrorMessage="Twoje nazwisko może zawierać jedynie litery!"></asp:RegularExpressionValidator>

        </p>
        <p>
            <asp:Label ID="Email" runat="server" Text="Label">E-mail</asp:Label> <br />
            <asp:TextBox ID="EmailWpolu" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="SprawdzenieCzyWogolePodalesEmail" ControlToValidate="EmailWpolu" runat="server" ErrorMessage="Nie podałeś swojego e-maila!"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="walidacjaEmailaPodKatemZnakow" runat="server" ControlToValidate="EmailWpolu" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="Twój e-mail jest niepoprawny!"></asp:RegularExpressionValidator>

        </p>
               
        <p style="height: 133px; width: 313px;">
            <asp:Label ID="Komentarz" runat="server" Text="Label">Komentarz</asp:Label> <br />
            <asp:TextBox ID="KomentarzWpolu" runat="server" Rows="8" Columns="5" TextMode="MultiLine" Width="284px" Height="91px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="SprawdzenieCzyCosWpisales" ControlToValidate="KomentarzWpolu" runat="server" ErrorMessage="Nic nie wpisałeś w polu komentarz!"></asp:RequiredFieldValidator> <br />
       </p>
        <h1>


        </h1>

        <p>
            <asp:Button ID="Button1" runat="server" Text="Potwierdź" OnClick="Button1_Click"  />


        </p>
    </aside>


</asp:Content>