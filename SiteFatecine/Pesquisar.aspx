<%@ Page Title="Pesquisar Filmes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pesquisar.aspx.cs" Inherits="SiteFatecine.Pesquisar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server" EnableTheming="True">
            <br />
            <asp:Label ID="Label1" runat="server" 
                style="font-size: large; font-weight: 700" Text="Pesquisar"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txbPesquisar" runat="server" CssClass="style2" Width="247px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="codigo" 
                DataSourceID="AccessDataSource1" Font-Bold="False" Font-Italic="False" 
                Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                ForeColor="Black" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    &nbsp;
                    <br />
                    &nbsp;
                    <asp:Image ID="Image1" runat="server" Height="145px" 
                        ImageUrl='<%# Eval("foto") %>' Width="100px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" 
                        NavigateUrl='<%# "~/Detalhes.aspx?codfilme="+Eval("codigo","{0}") %>' 
                        Text='<%# Eval("titulo_brasil", "{0}") %>'></asp:HyperLink>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/banco.mdb" 
                SelectCommand="SELECT * FROM [filmes] WHERE ([titulo_brasil] LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txbPesquisar" Name="titulo_brasil" 
                        PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </asp:View>
    </asp:MultiView>
</asp:Content>
