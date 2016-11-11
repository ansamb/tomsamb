<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GodzinyRozkladowLotow.aspx.cs" Inherits="Inżynierka.GodzinyRozkladowLotow1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDgodziny" DataSourceID="EntityDataSourceGodzinyRozkladowLotow" style="margin-right: 18px" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IDgodziny" HeaderText="IDgodziny" ReadOnly="True" SortExpression="IDgodziny" />
            <asp:BoundField DataField="godzinyPoranne" HeaderText="godzinyPoranne" SortExpression="godzinyPoranne" />
            <asp:BoundField DataField="godzinyWieczorne" HeaderText="godzinyWieczorne" SortExpression="godzinyWieczorne" />
            <asp:BoundField DataField="IDmiasta" HeaderText="IDmiasta" SortExpression="IDmiasta" />
            <asp:BoundField DataField="IDTypyPołączenia" HeaderText="IDTypyPołączenia" SortExpression="IDTypyPołączenia" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSourceGodzinyRozkladowLotow" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="GodzinyRozkladowLotow">
    </asp:EntityDataSource>
</asp:Content>
