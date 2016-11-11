<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Parametry.aspx.cs" Inherits="Inżynierka.Parametry1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDPolaczenia" DataSourceID="EntityDataSourceParametry">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IDPolaczenia" HeaderText="IDPolaczenia" ReadOnly="True" SortExpression="IDPolaczenia" />
            <asp:BoundField DataField="MiastoWylotu" HeaderText="MiastoWylotu" SortExpression="MiastoWylotu" />
            <asp:BoundField DataField="MiastoPrzylotu" HeaderText="MiastoPrzylotu" SortExpression="MiastoPrzylotu" />
            <asp:BoundField DataField="Odleglosc" HeaderText="Odleglosc" SortExpression="Odleglosc" />
            <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
            <asp:BoundField DataField="Linia" HeaderText="Linia" SortExpression="Linia" />
            <asp:BoundField DataField="GodzinaWylotu" HeaderText="GodzinaWylotu" SortExpression="GodzinaWylotu" />
            <asp:BoundField DataField="GodzinaPrzylotu" HeaderText="GodzinaPrzylotu" SortExpression="GodzinaPrzylotu" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSourceParametry" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Parametry">
    </asp:EntityDataSource>
</asp:Content>
