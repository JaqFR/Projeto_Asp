<%@ Page Title="Detalhes do Filme" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="SiteFatecine.Detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
        .style2
        {
            color: #000000;
        }
        .style3
        {
            width: 127px;
        }
        .style4
        {
            width: 127px;
            height: 25px;
        }
        .style5
        {
            font-size: medium;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="codigo" 
        DataSourceID="AccessDataSource1">
        <EditItemTemplate>
            codigo:
            <asp:Label ID="codigoLabel1" runat="server" Text='<%# Eval("codigo") %>' />
            <br />
            titulo_original:
            <asp:TextBox ID="titulo_originalTextBox" runat="server" 
                Text='<%# Bind("titulo_original") %>' />
            <br />
            titulo_brasil:
            <asp:TextBox ID="titulo_brasilTextBox" runat="server" 
                Text='<%# Bind("titulo_brasil") %>' />
            <br />
            ano:
            <asp:TextBox ID="anoTextBox" runat="server" Text='<%# Bind("ano") %>' />
            <br />
            genero:
            <asp:TextBox ID="generoTextBox" runat="server" Text='<%# Bind("genero") %>' />
            <br />
            duracao:
            <asp:TextBox ID="duracaoTextBox" runat="server" Text='<%# Bind("duracao") %>' />
            <br />
            sinopse:
            <asp:TextBox ID="sinopseTextBox" runat="server" Text='<%# Bind("sinopse") %>' />
            <br />
            diretor:
            <asp:TextBox ID="diretorTextBox" runat="server" Text='<%# Bind("diretor") %>' />
            <br />
            roteirista:
            <asp:TextBox ID="roteiristaTextBox" runat="server" 
                Text='<%# Bind("roteirista") %>' />
            <br />
            atores_principais:
            <asp:TextBox ID="atores_principaisTextBox" runat="server" 
                Text='<%# Bind("atores_principais") %>' />
            <br />
            atores_coadjuvantes:
            <asp:TextBox ID="atores_coadjuvantesTextBox" runat="server" 
                Text='<%# Bind("atores_coadjuvantes") %>' />
            <br />
            premiacoes:
            <asp:TextBox ID="premiacoesTextBox" runat="server" 
                Text='<%# Bind("premiacoes") %>' />
            <br />
            gosto_filme:
            <asp:TextBox ID="gosto_filmeTextBox" runat="server" 
                Text='<%# Bind("gosto_filme") %>' />
            <br />
            foto:
            <asp:TextBox ID="fotoTextBox" runat="server" Text='<%# Bind("foto") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            titulo_original:
            <asp:TextBox ID="titulo_originalTextBox" runat="server" 
                Text='<%# Bind("titulo_original") %>' />
            <br />
            titulo_brasil:
            <asp:TextBox ID="titulo_brasilTextBox" runat="server" 
                Text='<%# Bind("titulo_brasil") %>' />
            <br />
            ano:
            <asp:TextBox ID="anoTextBox" runat="server" Text='<%# Bind("ano") %>' />
            <br />
            genero:
            <asp:TextBox ID="generoTextBox" runat="server" Text='<%# Bind("genero") %>' />
            <br />
            duracao:
            <asp:TextBox ID="duracaoTextBox" runat="server" Text='<%# Bind("duracao") %>' />
            <br />
            sinopse:
            <asp:TextBox ID="sinopseTextBox" runat="server" Text='<%# Bind("sinopse") %>' />
            <br />
            diretor:
            <asp:TextBox ID="diretorTextBox" runat="server" Text='<%# Bind("diretor") %>' />
            <br />
            roteirista:
            <asp:TextBox ID="roteiristaTextBox" runat="server" 
                Text='<%# Bind("roteirista") %>' />
            <br />
            atores_principais:
            <asp:TextBox ID="atores_principaisTextBox" runat="server" 
                Text='<%# Bind("atores_principais") %>' />
            <br />
            atores_coadjuvantes:
            <asp:TextBox ID="atores_coadjuvantesTextBox" runat="server" 
                Text='<%# Bind("atores_coadjuvantes") %>' />
            <br />
            premiacoes:
            <asp:TextBox ID="premiacoesTextBox" runat="server" 
                Text='<%# Bind("premiacoes") %>' />
            <br />
            gosto_filme:
            <asp:TextBox ID="gosto_filmeTextBox" runat="server" 
                Text='<%# Bind("gosto_filme") %>' />
            <br />
            foto:
            <asp:TextBox ID="fotoTextBox" runat="server" Text='<%# Bind("foto") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table style="width:100%; height: 311px;">
                <tr>
                    <td class="style4">
                        <asp:Label ID="titulo_brasilLabel" runat="server" 
                            style="color: #000000; font-weight: 700; font-size: xx-large" 
                            Text='<%# Bind("titulo_brasil") %>' />
                    </td>
                    <td class="style5">
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("foto") %>' />
                    </td>
                    <td class="style1">
                        <strong>Título Original<br /> </strong>
                        <asp:Label ID="titulo_originalLabel" runat="server" CssClass="style2" 
                            Text='<%# Bind("titulo_original") %>' />
                        <strong>
                        <br />
                        Ano<br /></strong>
                        <asp:Label ID="anoLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("ano") %>' />
                        <br />
                        <strong>Gênero<br /> </strong>
                        <asp:Label ID="generoLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("genero") %>' />
                        <br />
                        <strong>Duração(min)<br /> </strong>
                        <asp:Label ID="duracaoLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("duracao") %>' />
                        <br />
                        <strong>Sinopse</strong><br />
                        <asp:Label ID="sinopseLabel" runat="server" style="color: #000000; text-align: justify;" 
                            Text='<%# Bind("sinopse") %>' />
                        <br />
                        <strong>Diretor</strong><br />
                        <asp:Label ID="diretorLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("diretor") %>' />
                        <br />
                        <strong>Roteiristas</strong><br />
                        <asp:Label ID="roteiristaLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("roteirista") %>' />
                        <br />
                        <strong>Atores Principais</strong><br />
                        <asp:Label ID="atores_principaisLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("atores_principais") %>' />
                        <br />
                        <strong>Atores Coadjuvantes</strong><br />
                        <asp:Label ID="atores_coadjuvantesLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("atores_coadjuvantes") %>' />
                        <br />
                        <strong>Premiações:</strong>
                        <asp:Label ID="premiacoesLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("premiacoes") %>' />
                    </td>
                </tr>
            </table>

        </ItemTemplate>
    </asp:FormView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/banco.mdb" 
        SelectCommand="SELECT * FROM [filmes] WHERE ([codigo] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="codigo" 
                QueryStringField="codfilme" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
</p>
    <p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pesquisar.aspx">Voltar</asp:HyperLink>
</p>
</asp:Content>
