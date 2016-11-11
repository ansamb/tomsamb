<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiastaWylotu.aspx.cs" Inherits="Inżynierka.MiastaWylotu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDMiasWyl" DataSourceID="EntityDataSourceMiastaWylotu" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IDMiasWyl" HeaderText="IDMiasWyl" ReadOnly="True" SortExpression="IDMiasWyl" />
            <asp:BoundField DataField="MiasWyl" HeaderText="MiasWyl" SortExpression="MiasWyl" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSourceMiastaWylotu" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="MiasWylo">
    </asp:EntityDataSource>
</asp:Content>
