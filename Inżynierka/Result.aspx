<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Inżynierka.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


   <%-- <asp:Repeater ID="Repeater1" runat="server">
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



    </asp:Repeater>--%>

   <%-- <script type = "text/javascript">
        function RadioCheck(rb) {
            //var gv = document.getElementById
            var gv = document.getElementsByName("<%=GridView1.MiastoWylotu%>");
         var rbs = gv.getElementsByTagName("input");

         var row = rb.parentNode.parentNode;
         for (var i = 0; i < rbs.length; i++) {
             if (rbs[i].type == "radio") {
                 if (rbs[i].checked && rbs[i] != rb) {
                     rbs[i].checked = false;
                     break;
                 }
             }
         }
     }
</script>--%>

   <%--  <script type = "text/javascript">
         function SelectRadioButton(radio) {
             //var gv = document.getElementById
             var rdBtn = document.getElementsByName("<%=GridView1.data%>");
             var rdBtnList = gv.getElementsByTagName("input");

            //var row = rb.parentNode.parentNode;
             for (var i = 0; i < rdBtnList.length; i++) {
                 if (rdBtnList[i].type == "radio") {
                    
                     
                     rdBtnList[i].checked = false;
                     
                }
            }
        }
</script>--%>

<%--    <script type = "text/javascript">
        function RadioCheck(rb) {
            //var gv = document.getElementById
            var gv = document.getElementsByName("<%=GridView1.MiastoWylotu%>");
            var rbs = gv.getElementsByTagName("input");

            var row = rb.parentNode.parentNode;
            for (var i = 0; i < rbs.length; i++) {
                if (rbs[i].type == "radio") {
                    if (rbs[i].checked && rbs[i] != rb) {
                        rbs[i].checked = false;
                        break;
                    }
                }
            }
        }
</script>--%>
      Proszę wybrać  dogodną dla Państwa godzinę i kliknąć przycisk "Zamów" ! Lub "Wstecz" jeśli chcą Państo powrócić do wyszukiwarki połączeń. 

    <h1> Dostępne wyloty</h1>
    <br />
    <br>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Results"  CellPadding="4" >

       <%-- <input id="ctl00_MainContent_Suppliers_ctl02_RowSelector" 
    name="ctl00$MainContent$Suppliers$ctl02$SuppliersGroup" 
    type="radio" value="RowSelector" />
<input id="ctl00_MainContent_Suppliers_ctl03_RowSelector" 
    name="ctl00$MainContent$Suppliers$ctl03$SuppliersGroup" 
    type="radio" value="RowSelector" />
<input id="ctl00_MainContent_Suppliers_ctl04_RowSelector" 
    name="ctl00$MainContent$Suppliers$ctl04$SuppliersGroup" 
    type="radio" value="RowSelector" />
<input id="ctl00_MainContent_Suppliers_ctl05_RowSelector" 
    name="ctl00$MainContent$Suppliers$ctl05$SuppliersGroup" 
    type="radio" value="RowSelector" />--%>

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
                   <%-- <itemtemplate>
                        <asp:checkbox ID="cbSelect" CssClass="gridCB" runat="server"></asp:checkbox>
                    </itemtemplate>--%>
                <ItemTemplate>
                <asp:RadioButton ID="RowSelector" AutoPostBack="true" type="radio" runat="server" OnCheckedChanged="rbtnSelect_CheckedChanged"   />
                                                                                        
                  <%--<input name="RadioButton" ID="RowSelector" type="radio" OnCheckedChanged="rbtnSelect_CheckedChanged" value='<%# Eval("Linia") %><%# Eval("GodzinaWylotu") %>' />--%>
                     </ItemTemplate>
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
            </ContentTemplate>
    </asp:UpdatePanel>

    <asp:SqlDataSource ID="Results" runat="server" ConnectionString="<%$ ConnectionStrings:SystemRezerwacjiBiletowConnectionString %>" SelectCommand="SELECT [Data], [MiastoWylotu], [MiastoPrzylotu], [Cena], [Linia], [GodzinaWylotu], [GodzinaPrzylotu] FROM [Results] WHERE (([MiastoWylotu] = @MiastoWylotu) AND ([MiastoPrzylotu] = @MiastoPrzylotu) AND ([Data] = @Data))">
        <SelectParameters>
            <asp:QueryStringParameter Name="MiastoWylotu" QueryStringField="mw" Type="String" />
            <asp:QueryStringParameter Name="MiastoPrzylotu" QueryStringField="mp" Type="String" />
            <asp:QueryStringParameter DbType="Date" Name="Data" QueryStringField="dataW" />
        </SelectParameters>
    </asp:SqlDataSource>

    <%--<asp:linkbutton id="LinkButton1" 
      text="Post back to this page"
      runat="Server">
    </asp:linkbutton>

    <br /><br />

    <asp:linkbutton id="LinkButton2"
      text="Post value to another page" 
      postbackurl="LinkButton.ProductsForSupplierDetails.aspx" 
      runat="Server">
    </asp:linkbutton>--%>

    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
  <%--  <asp:Label ID="lblMsg1" runat="server" Text=""></asp:Label>--%>
    <br />
     
    <asp:Button ID="Button2" runat="server" Text="Wstecz" PostBackUrl="~/About.aspx" ></asp:Button>
    <asp:Button ID="Button1" runat="server" Text="Zamów" OnClick="Button1_Click" />

</asp:Content>
