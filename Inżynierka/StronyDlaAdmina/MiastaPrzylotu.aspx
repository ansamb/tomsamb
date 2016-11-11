<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiastaPrzylotu.aspx.cs" Inherits="Inżynierka.MiastaPrzylotu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDMiasPrz" DataSourceID="EntityDataSourceMiastaPrzylotu">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IDMiasPrz" HeaderText="IDMiasPrz" ReadOnly="True" SortExpression="IDMiasPrz" />
            <asp:BoundField DataField="IDMiasWyl" HeaderText="IDMiasWyl" SortExpression="IDMiasWyl" />
            <asp:BoundField DataField="MiasPrz" HeaderText="MiasPrz" SortExpression="MiasPrz" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSourceMiastaPrzylotu" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="MiasPrzy">
    </asp:EntityDataSource>
</asp:Content>
