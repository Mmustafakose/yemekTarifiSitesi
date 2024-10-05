<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminYemekDüzenleme.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminYemekDüzenleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table border="1" style="width: 100%">
        <tr>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td style="text-align: end">Yemek Ad: </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="98%"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: end">Malzemeler: </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="98%" TextMode="MultiLine" Height="100px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: end">Tarif: </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="98%" TextMode="MultiLine" Height="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: end">Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="100%"></asp:DropDownList></td>
        </tr>
        <tr>
            <td style="text-align: end">Yemek Fotoğrafı: </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="98%" />
                </td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" /></td>

            <td>
                <asp:Button runat="server" ID="btnGununYemegi" Text="Günün Yemeği Seç" OnClick="btnGununYemegi_Click" /></td>
        </tr>
    </table>

</asp:Content>
