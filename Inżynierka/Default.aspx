<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Inżynierka._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                <h2>Witamy na oficjalnej witrynie linii lotniczej TomSam</h2>
            </hgroup>
            <p>
                TomSam jest linią lotniczą oferującą opłacalne usługi wysokiej jakości skupiającą się na innowacjach ułatwiających podróż. Pragniemy, aby ceny podróży lotniczych były przystępne dla obywateli krajów Europy <span class="auto-style1">Środkowo-Wschodniej</span> oraz aby zapewnić wszystkim pasażerom w Unii Europejskiej nową formę podróżowania. W TomSam korzystamy z najnowocześniejszych technologii pozwalających zapewnić najwyższą jakość usług za przystępną cenę. TomSam&nbsp; oferuje uproszczony model usług, czyli podróż bez biletu, korzystanie z mniejszych lotnisk umożliwiających tańszą i szybszą obsługę pasażerów, kabiny jednej klasy ze skórzanymi fotelami bez przydziału miejsc oraz usługi gastronomiczne na życzenie pasażera za dodatkową opłatą. TomSam lata nowymi samolotami najlepszymi w tej kategorii technologicznej, których obsługę techniczną zapewnia organizacja Lufejsa Technik wiodąca w dziedzinie serwisu lotniczego na świecie. Dzięki temu nasza firma zapewnia podróżnym usługi na stałym wysokim poziomie. 
                TomSam dysponuje flotą nowych samolotów Airbus A380 ze 180 skórzanymi siedzeniami na pokładzie.</p>
           
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <a href="About.aspx">Zarezerwuj bilet</a>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            color: #ff0000;
        }
    </style>
</asp:Content> 
