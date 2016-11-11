<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Inżynierka.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Zarezerwuj bilet!</h1> 
        <br /> 
        <br /> 
        <h2>Witajcie!</h2> 
        <br />
        <h3>Po prawej stronie ekranu,możecie Państwo dokonać rezerwacji biletu.
            W zależności od miasta z którego chcecie Państwo wylecieć oraz miasta 
            docelowego,uzależniony jest wybór danej trasy obsługiwanej przez naszą linię lotniczą.
            Więcej szczegółów odnośnie obsługiwanych przez Nas miast,a także rozkładów lotów znajdziecie Państwo
            w zakładce "Dokąd latamy" .Zapraszamy!
        </h3>
    </hgroup>

    <%--<article>--%>
    <script lang="javascript">
        function display() {
           alert("Wybierz miasto");
        }
</script>
   <%-- </article>--%>

    <div id="container" >
        
        <div id="sidePanel">   
             <%--<aside >--%>
        <ContentTemplate>
        <asp:UpdatePanel runat="server"></asp:UpdatePanel>
        <h3>Wyszukaj przelot:</h3>
        <br />
        
        <p>
        <asp:Label ID="Label1" runat="server" Text="Label">Wylot z:</asp:Label>
        <br />
            
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
        <asp:DropDownList ID="MW1" runat="server" Width="120px" Height="28px"   AutoPostBack="True" OnSelectedIndexChanged="MW1_SelectedIndexChanged1"   >

            <asp:ListItem Value="wybierz miasto">wybierz miasto</asp:ListItem>
            </asp:DropDownList> 
         
              <asp:requiredfieldvalidator id="RequiredFieldValidator1"
                  controltovalidate="MW1"
                  validationgroup="PersonalInfoGroup"
                  ErrorMessage="Wybierz miasto wylotu"
                  runat="Server"
                  InitialValue="0">
              </asp:requiredfieldvalidator>

           <br /> <br /> 
           
            <asp:Label ID="Label2" runat="server" Text="Label">Przylot do:</asp:Label> <br /> <br />
            
            <asp:DropDownList ID="MP1" Enabled="false" runat="server" Width="120px" Height="28px"   AutoPostBack="True" OnSelectedIndexChanged="MP1_SelectedIndexChanged">
                <asp:ListItem Value="-----------------------" >wybierz miasto</asp:ListItem>
            </asp:DropDownList>

              <asp:requiredfieldvalidator id="RequiredFieldValidator2"
                  controltovalidate="MP1"
                  validationgroup="PersonalInfoGroup"
                  ErrorMessage="Wybierz miasto przylotu"
                  runat="Server"
                  InitialValue="0">
              </asp:requiredfieldvalidator>
            
            
              <br />
              <br />
             
        
   
              Data wylotu:
        
   
        <br />
   
              <asp:TextBox ID="DataWylotu" runat="server" Width="120px" Height="22px" ></asp:TextBox>
              <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Images/kalendarz1.jpg" OnClick="ImageButton1_Click" Weight="20px" />
              <asp:Calendar ID="Calendar1" runat="server"  OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" ></asp:Calendar>
           
            
               <asp:requiredfieldvalidator id="RequiredFieldValidator3"
                  controltovalidate="DataWylotu"
                  validationgroup="PersonalInfoGroup"
                  errormessage="Wybierz datę wylotu"
                  runat="Server">
                </asp:requiredfieldvalidator>

   
        <br />
   
        <br />

 <asp:CheckBox ID="CheckBox1" runat="server"  Text="Bilet w dwie strony" OnCheckedChanged="CheckBox1_CheckedChanged" />
       
        <br />
                      
              Data przylotu:<br />
              <asp:TextBox ID="DataPrzylotu" runat="server" Width="120px" Height="22px" ></asp:TextBox>
              <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageUrl="~/Images/kalendarz2.jpg" OnClick="ImageButton2_Click" Weight="20px" />
              <asp:Calendar ID="Calendar2" runat="server" OnDayRender="Calendar2_DayRender" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
              
                <asp:CustomValidator ID="CustomValidator1" 
                                   ControlToValidate="DataWylotu" 
                                   OnServerValidate="IsTextboxValid"
                                   errormessage="Wybierz datę wylotu" 
                                   runat="server" validationgroup="PersonalInfoGroup"/>

<%--               <asp:requiredfieldvalidator id="RequiredFieldValidator4"
                  controltovalidate="DataPrzylotu"
                  validationgroup="PersonalInfoGroup"
                  errormessage="Wybierz datę przylotu"
                  runat="Server">
                </asp:requiredfieldvalidator>--%>
        
                <br />
            
    
        <p>
        Ilość osób: <br />
        <asp:TextBox ID="IloscOsob" runat="server" Width="120px" Height="22px" Text="1" OnTextChanged="IloscOsob_TextChanged" ></asp:TextBox>
            <asp:RangeValidator id ="valid4" runat ="server" ControlToValidate ="IloscOsob" MaximumValue ="180" MinimumValue ="1" Type ="Integer" validationgroup="PersonalInfoGroup" ErrorMessage ="Pole musi przyjąć wartości z przedziału 1 - 180." Display ="dynamic"/>
            <asp:CompareValidator ControlToValidate="IloscOsob"  ID="CompareValidator2" Type="Integer" Operator="DataTypeCheck" runat="server" validationgroup="PersonalInfoGroup" ErrorMessage="Podana wartość nie jest liczbą całkowitą!"></asp:CompareValidator>
         <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
     ControlToValidate="YourTextBoxID"
     ErrorMessage="Only numeric allowed." ForeColor="Red"
     ValidationExpression="^[0-9]*$" ValidationGroup="NumericValidate">*
</asp:RegularExpressionValidator>--%>
            
<%--<asp:RangeValidator ID="SprawdzenieZakresuLiczbyOsob" Type="Integer" ControlToValidate="IloscOsob" MinimumValue="1" MaximumValue="180" runat="server" Dispaly="None"  ErrorMessage="Niestety nie możesz zakupić tak dużej ilości biletów.Samolot może pomieścić max. 180 osób" validationgroup="PersonalInfoGroup"></asp:RangeValidator>
--%>
        </p> 

              <p>
                  &nbsp;</p>

        <asp:Button ID="Button1"  runat="server" Text="Sprawdż Dane" Width="120px" OnClick="Button1_Click" causesvalidation="true"
      validationgroup="PersonalInfoGroup" />
        <p>
            &nbsp;</p>
            
    
        <br />
        <p>
            &nbsp;</p>
            <br />
         </ContentTemplate>
          </asp:UpdatePanel>
    <%--</aside>--%>
        </div>
         <div id="MainPanel">
           
             <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>
                     <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="10000">
                     </asp:Timer>
                     <asp:Image ID="Image1" Height="466px" Width="610px" runat="server" />
                  </ContentTemplate>
             </asp:UpdatePanel>
           
       
         </div>
        </div>
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
           
        #container
{
      overflow: hidden;
}

        #sidePanel
{
     float: left;
	    width: 30%;
}
    #MainPanel
    {
          width: 68%;     
       float: right
    }
    </style>
</asp:Content>


