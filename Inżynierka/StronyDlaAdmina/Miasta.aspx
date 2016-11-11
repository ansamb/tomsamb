<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Miasta.aspx.cs" Inherits="Inżynierka.Miasta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDmiasta" DataSourceID="EntityDataSourceMiasta">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IDmiasta" HeaderText="IDmiasta" ReadOnly="True" SortExpression="IDmiasta" />
            <asp:BoundField DataField="miasto" HeaderText="miasto" SortExpression="miasto" />
        </Columns>
    </asp:GridView>

    <asp:EntityDataSource ID="EntityDataSourceMiasta" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="MIASTA">
    </asp:EntityDataSource>

</asp:Content>
