<%@ Page Title="Pesquisar Artistas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pesquisar2.aspx.cs" Inherits="SiteFatecine.Pesquisar2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <br />
        <asp:Label ID="Label1" runat="server" 
            style="font-size: large; font-weight: 700" Text="Pesquisar"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txbPesquisar" runat="server" 
            style="font-size: small; font-family: Arial, Helvetica, sans-serif" 
            Width="247px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="CODIGO" 
            DataSourceID="AccessDataSource1" RepeatDirection="Horizontal" 
            RepeatColumns="4">
            <ItemTemplate>
                &nbsp;&nbsp;<br /> &nbsp;
                <asp:Image ID="Image1" runat="server" Height="145px" 
                    ImageUrl='<%# Eval("foto") %>' Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl='<%# "~/Detalhes2.aspx?codpessoa="+Eval("codigo","{0}") %>' 
                    Text='<%# Eval("NOME", "{0}") %>'></asp:HyperLink>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/banco.mdb" 
            SelectCommand="SELECT * FROM [PESSOAS] WHERE ([NOME] LIKE '%' + ? + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txbPesquisar" Name="NOME" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </asp:View>
</asp:MultiView>
</asp:Content>
