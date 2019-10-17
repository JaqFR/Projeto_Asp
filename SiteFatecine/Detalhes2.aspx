<%@ Page Title="Detalhes do Artista" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalhes2.aspx.cs" Inherits="SiteFatecine.Detalhes2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CODIGO" 
        DataSourceID="AccessDataSource1">
        <EditItemTemplate>
            CODIGO:
            <asp:Label ID="CODIGOLabel1" runat="server" Text='<%# Eval("CODIGO") %>' />
            <br />
            NOME:
            <asp:TextBox ID="NOMETextBox" runat="server" Text='<%# Bind("NOME") %>' />
            <br />
            NACIONALIDADE:
            <asp:TextBox ID="NACIONALIDADETextBox" runat="server" 
                Text='<%# Bind("NACIONALIDADE") %>' />
            <br />
            DATA_NASC:
            <asp:TextBox ID="DATA_NASCTextBox" runat="server" 
                Text='<%# Bind("DATA_NASC") %>' />
            <br />
            PREMIACOES:
            <asp:TextBox ID="PREMIACOESTextBox" runat="server" 
                Text='<%# Bind("PREMIACOES") %>' />
            <br />
            FOTO:
            <asp:TextBox ID="FOTOTextBox" runat="server" Text='<%# Bind("FOTO") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            NOME:
            <asp:TextBox ID="NOMETextBox" runat="server" Text='<%# Bind("NOME") %>' />
            <br />
            NACIONALIDADE:
            <asp:TextBox ID="NACIONALIDADETextBox" runat="server" 
                Text='<%# Bind("NACIONALIDADE") %>' />
            <br />
            DATA_NASC:
            <asp:TextBox ID="DATA_NASCTextBox" runat="server" 
                Text='<%# Bind("DATA_NASC") %>' />
            <br />
            PREMIACOES:
            <asp:TextBox ID="PREMIACOESTextBox" runat="server" 
                Text='<%# Bind("PREMIACOES") %>' />
            <br />
            FOTO:
            <asp:TextBox ID="FOTOTextBox" runat="server" Text='<%# Bind("FOTO") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:Label ID="NOMELabel" runat="server" Text='<%# Bind("NOME") %>' 
                            style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #333333" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="300px" 
                            ImageUrl='<%# Bind("FOTO") %>' Width="200px" />
                    </td>
                    <td>
                        <strong><span class="style1">Nacionalidade</span></strong><span class="style1"><br />
                        <asp:Label ID="NACIONALIDADELabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("NACIONALIDADE") %>' />
                        <br />
                        <strong>
                        <br />
                        Data de Nascimento</strong><br />
                        <asp:Label ID="DATA_NASCLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("DATA_NASC", "{0:d}") %>' />
                        <br />
                        <strong>
                        <br />
                        Premiações</strong><br />
                        <asp:Label ID="PREMIACOESLabel" runat="server" style="color: #000000" 
                            Text='<%# Bind("PREMIACOES") %>' />
                        </span>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/banco.mdb" 
        SelectCommand="SELECT * FROM [PESSOAS] WHERE ([CODIGO] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="CODIGO" 
                QueryStringField="codpessoa" Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
</p>
    <p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pesquisar2.aspx">Voltar</asp:HyperLink>
</p>
</asp:Content>
