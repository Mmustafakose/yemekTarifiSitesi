<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminKategoriDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminKategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%">
        <tr>
            <td style="text-align:end">Kategori Ad:</td>
            <td><asp:TextBox runat="server" ID="txtKAtegoriAd"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:end">Adet:</td>
            <td><asp:TextBox runat="server" ID="txtKategoriAdet"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:end">Resim:</td>
            <td><asp:FileUpload runat="server" ID="FldKategoriResim" /></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnGüncelle" runat="server" Text="Güncelle" Width="150" Font-Bold="true" OnClick="btnGüncelle_Click"  /></td>
        </tr>
    </table>

</asp:Content>
