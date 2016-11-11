<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Result2.aspx.cs" Inherits="Inżynierka.Result2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <h1> Dostępne wyloty</h1>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Results"  CellPadding="4" >
        
        <emptydatarowstyle backcolor="LightBlue" forecolor="Red"/>

        <emptydatatemplate>

         <%-- <asp:image id="NoDataImage"
            imageurl="~/images/Image.jpg"
            alternatetext="No Image" 
            runat="server"/>--%>

            BRAK PASUJĄCYCH POŁACZEŃ  

        </emptydatatemplate>

        <Columns>
            <asp:templatefield HeaderText="Wybierz">
                    <itemtemplate>
                     <asp:RadioButton ID="cbSelect" runat="server" 
                    GroupName="SuppliersGroup" OnCheckedChanged="rbtnSelect_CheckedChanged" />
                        
                    </itemtemplate>
            </asp:templatefield>
            <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" ReadOnly="True"  />
            <asp:BoundField DataField="MiastoWylotu" HeaderText="MiastoWylotu" SortExpression="MiastoWylotu" />
            <asp:BoundField DataField="MiastoPrzylotu" HeaderText="MiastoPrzylotu" SortExpression="MiastoPrzylotu" />
            <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
            <asp:BoundField DataField="Linia" HeaderText="Linia" SortExpression="Linia" />
            <asp:BoundField DataField="GodzinaWylotu" HeaderText="GodzinaWylotu" SortExpression="GodzinaWylotu" />
            <asp:BoundField DataField="GodzinaPrzylotu" HeaderText="GodzinaPrzylotu" SortExpression="GodzinaPrzylotu" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Results" runat="server" ConnectionString="<%$ ConnectionStrings:SystemRezerwacjiBiletowConnectionString %>" SelectCommand="SELECT [Data], [MiastoWylotu], [MiastoPrzylotu], [Cena], [Linia], [GodzinaWylotu], [GodzinaPrzylotu] FROM [Results] WHERE (([MiastoWylotu] = @MiastoWylotu) AND ([MiastoPrzylotu] = @MiastoPrzylotu) AND ([Data] = @Data))">
        <SelectParameters>
            <asp:QueryStringParameter Name="MiastoWylotu" QueryStringField="mw" Type="String" />
            <asp:QueryStringParameter Name="MiastoPrzylotu" QueryStringField="mp" Type="String" />
            <asp:QueryStringParameter DbType="Date" Name="Data" QueryStringField="dataW" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />
    <br />

  <h1> Dostępne przyloty</h1>
   <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  CellPadding="4" >
       <emptydatarowstyle backcolor="LightBlue" forecolor="Red"/>

        <emptydatatemplate>

         <%-- <asp:image id="NoDataImage"
            imageurl="~/images/Image.jpg"
            alternatetext="No Image" 
            runat="server"/>--%>

            BRAK PASUJĄCYCH POŁACZEŃ  

        </emptydatatemplate>
         <Columns>
           <%-- <asp:templatefield HeaderText="Wybierz">
                    <itemtemplate>
                        <asp:checkbox ID="cbSelect1" CssClass="gridCB" runat="server"></asp:checkbox>
                    </itemtemplate>
            </asp:templatefield>--%>
             <asp:TemplateField>
            <ItemTemplate>
                <asp:RadioButton ID="cbSelect1" runat="server" 
                    GroupName="SuppliersGroup" OnCheckedChanged="rbtnSelect_CheckedChanged1"  />
                
            </ItemTemplate>
        </asp:TemplateField>

            <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" ReadOnly="True"  />
            <asp:BoundField DataField="MiastoWylotu" HeaderText="MiastoWylotu" SortExpression="MiastoWylotu" />
            <asp:BoundField DataField="MiastoPrzylotu" HeaderText="MiastoPrzylotu" SortExpression="MiastoPrzylotu" />
            <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
            <asp:BoundField DataField="Linia" HeaderText="Linia" SortExpression="Linia" />
            <asp:BoundField DataField="GodzinaWylotu" HeaderText="GodzinaWylotu" SortExpression="GodzinaWylotu" />
            <asp:BoundField DataField="GodzinaPrzylotu" HeaderText="GodzinaPrzylotu" SortExpression="GodzinaPrzylotu" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SystemRezerwacjiBiletowConnectionString %>" SelectCommand="SELECT [Data], [MiastoWylotu], [MiastoPrzylotu], [Cena], [Linia], [GodzinaWylotu], [GodzinaPrzylotu] FROM [Results] WHERE (([MiastoWylotu] = @MiastoWylotu) AND ([MiastoPrzylotu] = @MiastoPrzylotu) AND ([Data] = @Data))">
        <SelectParameters>
            <asp:QueryStringParameter Name="MiastoWylotu" QueryStringField="mp" Type="String" />
            <asp:QueryStringParameter Name="MiastoPrzylotu" QueryStringField="mw" Type="String" />
            <asp:QueryStringParameter DbType="Date" Name="Data" QueryStringField="dataP" />
        </SelectParameters>
    </asp:SqlDataSource> <br />
    
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
  <%--  <asp:Label ID="lblMsg1" runat="server" Text=""></asp:Label>--%>
    <br />
     
    <asp:Button ID="Button2" runat="server" Text="Wstecz" PostBackUrl="~/About.aspx" ></asp:Button>
    <asp:Button ID="Button1" runat="server" Text="Zamów" OnClick="Button1_Click" />

</asp:Content>
