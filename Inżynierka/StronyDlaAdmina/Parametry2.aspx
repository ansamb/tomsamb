<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Parametry2.aspx.cs" Inherits="Inżynierka.Parametry21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">





  


    


    

                                                                                                                                   

    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSourceDlaMiastWylotu" DataTextField="MiastoWylotu" DataValueField="MiastoWylotu" AutoPostBack="True" AppendDataBoundItems="True">
        <asp:ListItem>miasto wylotu</asp:ListItem>
    </asp:DropDownList>

    <asp:EntityDataSource ID="EntityDataSourceDlaMiastWylotu" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableFlattening="False" EntitySetName="Parametry2"  Select="DISTINCT it.[MiastoWylotu] ">
    </asp:EntityDataSource>

     <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="EntityDataSourceDlaMiastPrzylotu" DataTextField="MiastoPrzylotu" DataValueField="MiastoPrzylotu" AutoPostBack="True" AppendDataBoundItems="True">
         <asp:ListItem>miasto przylotu</asp:ListItem>
    </asp:DropDownList>

    <asp:EntityDataSource ID="EntityDataSourceDlaMiastPrzylotu" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableFlattening="False" EntitySetName="Parametry2" Select="DISTINCT it.[MiastoPrzylotu]  " >
    </asp:EntityDataSource>

   <%-- <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="EntityDataSourceDlaOdleglosci" DataTextField="Odleglosc" DataValueField="Odleglosc" AppendDataBoundItems="True" AutoPostBack="True">
        
      
    </asp:DropDownList>
    
    <asp:EntityDataSource ID="EntityDataSourceDlaOdleglosci" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableFlattening="False" EntitySetName="Parametry2" Select="DISTINCT it.[Odleglosc]">
    </asp:EntityDataSource>

    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="EntityDataSourceDlaCeny" DataTextField="Cena" DataValueField="Cena" AppendDataBoundItems="True">
        
    </asp:DropDownList>






     <asp:EntityDataSource ID="EntityDataSourceDlaCeny" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableFlattening="False" EntitySetName="Parametry2" Select="DISTINCT it.[Cena]">
    </asp:EntityDataSource>--%>






     <%--<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="EntityDataSourceDlaMiastWylotu" DataTextField="MiastoWylotu" DataValueField="MiastoWylotu" AutoPostBack="True" AppendDataBoundItems="True">
        <asp:ListItem>miasto wylotu</asp:ListItem>
    </asp:DropDownList>

    <asp:EntityDataSource ID="EntityDataSourceDlaMiastWylotu1" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableFlattening="False" EntitySetName="Parametry2" Select="DISTINCT it.[MiastoWylotu] ">
    </asp:EntityDataSource>--%>
   






    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="EntityDataSourceParametry2" DataKeyNames="IDPolaczenia">
        <Columns>
            <asp:BoundField DataField="IDPolaczenia" HeaderText="IDPolaczenia" ReadOnly="True" SortExpression="IDPolaczenia" />
            <asp:BoundField DataField="MiastoWylotu" HeaderText="MiastoWylotu" SortExpression="MiastoWylotu" />
            <asp:BoundField DataField="MiastoPrzylotu" HeaderText="MiastoPrzylotu" SortExpression="MiastoPrzylotu" />
            <asp:BoundField DataField="Odleglosc" HeaderText="Odleglosc" SortExpression="Odleglosc" />
            <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
            <asp:BoundField DataField="Linia" HeaderText="Linia" SortExpression="Linia" />
            <asp:BoundField DataField="GodzinaWylotu" HeaderText="GodzinaWylotu" SortExpression="GodzinaWylotu" />
            <asp:BoundField DataField="GodzinaPrzylotu" HeaderText="GodzinaPrzylotu" SortExpression="GodzinaPrzylotu" />
            <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
            <asp:BoundField DataField="IloscMiejsc" HeaderText="IloscMiejsc" SortExpression="IloscMiejsc" />
        </Columns>
    </asp:GridView>
    
    <asp:EntityDataSource ID="EntityDataSourceParametry2" runat="server" ConnectionString="name=SystemRezerwacjiBiletowEntities5" DefaultContainerName="SystemRezerwacjiBiletowEntities5" EnableFlattening="False" EntitySetName="Parametry2" EnableDelete="True" EnableInsert="True" EnableUpdate="True" 
        Where=" it.[MiastoWylotu] == @MiastoWylotu 
        and  it.[MiastoPrzylotu] == @MiastoPrzylotu 
         ">
        <%-- and  it.[Odleglosc] == @Odleglosc 
        and it.[Cena] == @Cena--%>
        <WhereParameters>
            <asp:ControlParameter Name="MiastoWylotu" ControlID="DropDownList1" Type="String" DefaultValue="Null" />
            <asp:ControlParameter Name="MiastoPrzylotu" ControlID="DropDownList2" Type="String" DefaultValue="Null" />
            <%--<asp:ControlParameter Name="Odleglosc" ControlID="DropDownList3" Type="Int32" DefaultValue="Null" />
            <asp:ControlParameter Name="Cena" ControlID="DropDownList4" Type="Int32" DefaultValue="Null" />--%>

        </WhereParameters>
    
    </asp:EntityDataSource>
   


   

</asp:Content>
