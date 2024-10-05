<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminYorumDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminYorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1">
        <tr>
            <td>Ad Soyad:</td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Mail Adresi:</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>İçerik:</td>
            <td>
                <asp:TextBox ID="txtİcerik" runat="server" TextMode="MultiLine" Height="100" ></asp:TextBox></td>
        </tr>
        <tr>
            <td>Yemek:</td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button runat="server" ID="btnOnayla" text="Onayla" OnClick="btnOnayla_Click"/>
            </td>
            <td>
                <asp:Button runat="server" Id="btnGeriDon" Text=" Geri DÖn" OnClick="btnGeriDon_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
