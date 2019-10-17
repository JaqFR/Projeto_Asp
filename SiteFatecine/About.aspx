<%@ Page Title="Sobre Nós" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="SiteFatecine.About" %>
 
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            font-size: medium;
            color: #000000;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style2
        {
            color: #000000;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style3
        {
            color: #333333;
            font-size: large;
        }
        .style4
        {
            color: #333333;
        }
        .style5
        {
            font-size: medium;
            color: #333333;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style6
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 class="style2">
        <span class="style4">S</span><strong><span class="style3">obre Nós!</span> </strong>
    </h2>
    <p class="style5">
        Este projeto foi desenvolvido por:</p>
    <p class="style5">
        &nbsp;Bruno 
        Manesco, Isabela de Mattos, Jader Magri, Jaqueline Rissato e Larissa Coelho.</p>
    <p class="style1">
        <span class="style4"><span class="style6">&nbsp;Alunos da Faculdade de Tecnologia de Americana do 3o semestre do curso de Analise e Desenvolvimento de
        Sistemas, este site foi idealizado pelos amantes do cinema clássico Jader e Isabela, para que 
        pudessem compartilhar seus filmes favoritos com outros amantes de cinema, 
        possibilitando conhecer grandes títulos e celebridades que fazem parte deste 
        universo mágico que é o cinema.</span>&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </p>
    <p class="style1">
        &nbsp;<asp:Image ID="Image1" runat="server" Height="143px" ImageAlign="Right" 
            ImageUrl="~/img/claquete2.jpg" Width="155px" />
        
    </p>
</asp:Content>
