<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SiteFatecine._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            color: #000000;
        }
        .style4
    {
        font-size: medium;
        font-family: Arial, Helvetica, sans-serif;
        color: #333333;
    }
    .style5
    {
        color: #333333;
        font-family: Arial, Helvetica, sans-serif;
        font-size: large;
    }
    .style6
    {
        width: 242px;
        height: 219px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 class="style5">
        <strong>Bem Vindo ao Fatecine! </strong>
    </h2>
    <p class="style4">
        Fique por dentro do mundo do cinema!</p>
    <p class="style4">
        Entre e conheça os grandes títulos do cinema e as estrelas que marcaram época.</p>
    <p class="style1">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <strong><span class="style5">TOP 10</span><span class="style4"> </span></strong>
                            <span class="style4">- Os melhores filmes já vistos</span></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="Black" 
                                GridLines="Horizontal" style="text-align: center" Width="260px">
                                <Columns>
                                    <asp:BoundField DataField="TITULO_BRASIL" HeaderText="TÍTULO BRASILEIRO" 
                                        SortExpression="TITULO_BRASIL"><ItemStyle HorizontalAlign="Left" /></asp:BoundField>
                                    <asp:BoundField DataField="NOTA" HeaderText="NOTA" SortExpression="NOTA" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                        </td>
                        <td>
                            <img alt="" class="style6" src="img/pipoca.jpg" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/banco.mdb" SelectCommand="SELECT TOP 10, [TITULO_BRASIL], [NOTA] FROM [FILMES] WHERE [NOTA] &gt; 0 ORDER BY [NOTA] DESC, TITULO_BRASIL

">
                </asp:AccessDataSource>
            </asp:View>
        </asp:MultiView>
    </p>
    </asp:Content>
