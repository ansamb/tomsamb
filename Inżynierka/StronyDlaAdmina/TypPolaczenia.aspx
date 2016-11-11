<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TypPolaczenia.aspx.cs" Inherits="Inżynierka.TypPolaczenia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDTypyPołączenia" DataSourceID="EntityDataSourceTypPolaczenia">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IDTypyPołączenia" HeaderText="IDTypyPołączenia" ReadOnly="True" SortExpression="IDTypyPołączenia" />
            <asp:BoundField DataField="TypPołączenia" HeaderText="TypPołączenia" SortExpression="TypPołączenia" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSourceTypPolaczenia" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="TypyPołączenia">
    </asp:EntityDataSource>
</asp:Content>
