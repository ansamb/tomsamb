<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductsForSupplierDetails2.aspx.cs" Inherits="Inżynierka.ProductsForSupplierDetails2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

    <h3> Gratulujemy Państwu dokonanego zakupu! <br />Proszę wypełnić poniższy formularz.Otrzymacie Państwo e-mail potwierdzający zakup! <br />
        Proszę przybyć 30 minut przed planowanym odlotem z wydrukowaną wiadomością załączoną w e-mailu. <br />
    W przypadku jakiegokolwiek niezadowolenia,zamiany lub rezygnacji z powyższego zamówienia,prosimy kontaktować się z nami poprzez <a href="Contact.aspx">formularz zgłoszeniowy</a> </h3> <br />
    Kliknij "Potwierdź" jeśli jesteś pewny/a co do realizaji zamówienia  lub<br /> przejdź do:<a href="About.aspx"><h3>Wyszukiwarki połączeń</h3></a>  
    <asp:GridView ID="xSelected" runat="server" HeaderStyle-BackColor="Chartreuse" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Data" HeaderText="Data" />
                <asp:BoundField DataField="MiastoWylotu" HeaderText="MiastoWylotu" />
                <asp:BoundField DataField="MiastoPrzylotu" HeaderText="MiastoPrzylotu" />
                <asp:BoundField DataField="Cena" HeaderText="Cena" />
                <asp:BoundField DataField="Linia" HeaderText="Linia" />
                <asp:BoundField DataField="GodzinaWylotu" HeaderText="GodzinaWylotu" />
                <asp:BoundField DataField="GodzinaPrzylotu" HeaderText="GodzinaPrzylotu" />
            </Columns>
        </asp:GridView>

    <asp:GridView ID="xSelected1" runat="server" HeaderStyle-BackColor="Chartreuse" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Data" HeaderText="Data" />
                <asp:BoundField DataField="MiastoWylotu" HeaderText="MiastoWylotu" />
                <asp:BoundField DataField="MiastoPrzylotu" HeaderText="MiastoPrzylotu" />
                <asp:BoundField DataField="Cena" HeaderText="Cena" />
                <asp:BoundField DataField="Linia" HeaderText="Linia" />
                <asp:BoundField DataField="GodzinaWylotu" HeaderText="GodzinaWylotu" />
                <asp:BoundField DataField="GodzinaPrzylotu" HeaderText="GodzinaPrzylotu" />
            </Columns>
        </asp:GridView>

     

<%--</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">--%>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate> 
            <asp:Label ID="GdyZamowi" runat="server" Text=""></asp:Label> 

    <p>   <asp:TextBox ID="txtSubject" Visible="false" Text="bara" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtMessage" Visible="false" Text="bere" runat="server"></asp:TextBox>

          <asp:Label ID="Imie1" runat="server" Text="Label1" >Imię</asp:Label> <br />
       <asp:TextBox ID="ImieWpolu1" runat="server"   ></asp:TextBox>
            
           
             <asp:RequiredFieldValidator ID="SprawdzenieCzyWogolePodalesImie1" CssClass="field-validation-error" ControlToValidate="ImieWpolu1" runat="server" ErrorMessage="Nie podałeś swojego imienia!"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="walidacjaImieniaPodKatemZnakow1" runat="server" ControlToValidate="ImieWpolu1" ValidationExpression="^[a-zA-Z]{1,30}$" ErrorMessage="Twoje imię może zawierać jedynie litery!"></asp:RegularExpressionValidator>
           
        </p>
        <p>
            <asp:Label ID="Nazwisko1" runat="server" Text="Label2" >Nazwisko</asp:Label> <br />
            <asp:TextBox ID="NazwiskoWpolu1" runat="server" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="SprawdzenieCzyWogolePodalesNazwisko1" ControlToValidate="NazwiskoWpolu1" runat="server" ErrorMessage="Nie podałeś swojego nazwiska!"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="walidacjaNazwiskaPodKatemZnakow1" runat="server" ControlToValidate="NazwiskoWpolu1" ValidationExpression="^[a-zA-Z]{1,30}$" ErrorMessage="Twoje nazwisko może zawierać jedynie litery!"></asp:RegularExpressionValidator>

        </p>
        <p>

            <%--<asp:CompareValidator id="Compare1" 
                    ControlToValidate="EmailWpolu1" 
                    ControlToCompare="EmailWpolu2" 
                    Display="Dynamic"
                  
                    
                    Text="Podane e-maile różnią się!" 
                    runat="server"/>


            <br />
            --%>

            <%--<asp:Label ID="Email1" runat="server" AssociatedControlID="EmailWpolu1" Text="Label3">E-mail</asp:Label> <br />
            <asp:TextBox ID="EmailWpolu1" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="SprawdzenieCzyWogolePodalesEmail1" ControlToValidate="EmailWpolu1" runat="server" ErrorMessage="Nie podałeś swojego e-maila!"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="walidacjaEmailaPodKatemZnakow1" runat="server" ControlToValidate="EmailWpolu1" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="Twój e-mail jest niepoprawny!"></asp:RegularExpressionValidator>--%>

             <asp:Label ID="Email1" runat="server"  AssociatedControlID="EmailWpolu1">E-mail</asp:Label> <br />
                                <asp:TextBox runat="server"  ID="EmailWpolu1" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="SprawdzenieCzyWogolePodalesEmail1" runat="server" ControlToValidate="EmailWpolu1"
                                    CssClass="field-validation-error" ErrorMessage="Nie podałeś swojego e-maila!" /> 
            <asp:RegularExpressionValidator ID="walidacjaEmailaPodKatemZnakow1" runat="server" ControlToValidate="EmailWpolu1" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="Twój e-mail jest niepoprawny!"></asp:RegularExpressionValidator><br /> <br />
        

     <%--<asp:Label ID="Email2" runat="server" AssociatedControlID="EmailWpolu2" Text="Label4">Potwierdź adres E-mail</asp:Label> <br />
            <asp:TextBox ID="EmailWpolu2" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="EmailWpolu2" runat="server" ErrorMessage="Nie podałeś swojego e-maila!"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailWpolu2" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="Twój e-mail jest niepoprawny!"></asp:RegularExpressionValidator>
           --%>

              <asp:Label ID="Email2" runat="server" AssociatedControlID="EmailWpolu2">Potwierdź e-mail</asp:Label> <br />
                                <asp:TextBox runat="server" ID="EmailWpolu2" TextMode="Password" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailWpolu2"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />

                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailWpolu1" ControlToValidate="EmailWpolu2"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="Email i e-mail potwierdzający nie zgadzają się." />
            
                            
                                <%--<asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">User name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." /> <br />
                            
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Email">Email address</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." /> <br />--%>
                           
                               
                            
                              
                            
                               
                            
            </p>

    
        
        <p style="height: 133px; width: 313px;">
            <asp:Label ID="Komentarz1" runat="server" Text="Label5">Komentarz</asp:Label> <br />
            <asp:TextBox ID="KomentarzWpolu1" runat="server" Rows="8" Columns="5" TextMode="MultiLine" Width="284px" Height="91px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="SprawdzenieCzyCosWpisales" ControlToValidate="KomentarzWpolu1" runat="server" ErrorMessage="Nic nie wpisałeś w polu komentarz!"></asp:RequiredFieldValidator> <br />
       </p>
            
     <asp:Button ID="Button1" runat="server" Text="Potwierdź" OnClick="Button1_Click"  />

            </ContentTemplate>
        </asp:UpdatePanel>

</asp:Content>

