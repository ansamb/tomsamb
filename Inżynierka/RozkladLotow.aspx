<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="RozkladLotow" Codebehind="RozkladLotow.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="server">
    <h1>Rozklad Lotów</h1>
    <p>
        <h2> Poniżej znajdziecie Państwo harmonogram przedstawiający rozkład lotów,realizowanych przez naszą linię lotniczą.Zapraszamy do zapoznania się ! <br /> <br />
        </h2>
        <h3>Linia nr.1 </h3>
           </p>

    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>
    
    <h3>Kurs Powrotny</h3>
   
    <asp:Repeater ID="Repeater2" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>


    <h3>Linia nr.2</h3>
           

    <asp:Repeater ID="Repeater3" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>
    
    <h3>Kurs Powrotny</h3>
   
    <asp:Repeater ID="Repeater4" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>

    <h3>Linia nr.3</h3>
           

    <asp:Repeater ID="Repeater5" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>
    
    <h3>Kurs Powrotny</h3>
   
    <asp:Repeater ID="Repeater6" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>


    <h3>Linia nr.4</h3>
           

    <asp:Repeater ID="Repeater7" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>
    
    <h3>Kurs Powrotny</h3>
   
    <asp:Repeater ID="Repeater8" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>


    <h3>Linia nr.5</h3>
           

    <asp:Repeater ID="Repeater9" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>
    
    <h3>Kurs Powrotny</h3>
   
    <asp:Repeater ID="Repeater10" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>
     
     <h3>Linia nr.6</h3>
           

    <asp:Repeater ID="Repeater11" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>
    
    <h3>Kurs Powrotny</h3>
   
    <asp:Repeater ID="Repeater12" runat="server">
        <HeaderTemplate>
            <table style="width: 100%;">
                <tr>
                    <th>Trasa</th>
                    <th>Przelot Poranny</th>
                    <th>Przelot Wieczorny</th>
                    <th>Typ połączenia</th>
                     
                </tr>
            
        </HeaderTemplate>
        <ItemTemplate>

            <tr>
                        <td><%# Eval ("miasto") %></td>
                        <td><%# Eval("godzinyPoranne") %></td>
                        <td><%# Eval("godzinyWieczorne") %></td>
                         <td><%# Eval("TypPołączenia ") %></td>
                    </tr>
        </ItemTemplate>
        <FooterTemplate></table></FooterTemplate>

    </asp:Repeater>

  <%--  <asp:DropDownList ID="MW" runat="server" AutoPostBack="True" OnSelectedIndexChanged="MW_SelectedIndexChanged1"  ></asp:DropDownList>
    
    <asp:DropDownList ID="MP" runat="server" AutoPostBack="True" ></asp:DropDownList>--%>
    

    
</asp:Content>

