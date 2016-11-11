<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DaneUzytkownika.aspx.cs" Inherits="Inżynierka.StronaDlaAdmina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDUzytkownikow" DataSourceID="EntityDataSourceDaneUzytkownikow" Width="226px" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Imie" HeaderText="Imie" SortExpression="Imie" />
            <asp:BoundField DataField="Nazwisko" HeaderText="Nazwisko" SortExpression="Nazwisko" />
            <asp:BoundField DataField="E_mail" HeaderText="E_mail" SortExpression="E_mail" />
            <asp:BoundField DataField="E_mailPotwierdzający" HeaderText="E_mailPotwierdzający" SortExpression="E_mailPotwierdzający" />
            <asp:BoundField DataField="Komentarz" HeaderText="Komentarz" SortExpression="Komentarz" />
            <asp:BoundField DataField="IDUzytkownikow" HeaderText="IDUzytkownikow" ReadOnly="True" SortExpression="IDUzytkownikow" />
        </Columns>
    </asp:GridView>

    <asp:EntityDataSource ID="EntityDataSourceDaneUzytkownikow" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="DaneUzytkownikow">
    </asp:EntityDataSource>

    <asp:GridView ID="GridView2" runat="server"></asp:GridView>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
