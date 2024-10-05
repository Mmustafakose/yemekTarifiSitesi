<%@ Page Title="" Language="C#" MasterPageFile="~/kullaniciMaster.Master" AutoEventWireup="true" CodeBehind="tarifoner.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.tarifoner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" style="text-align: left">
        <tr>
        </tr>
        <tr>
            <td style="text-align: left"><b>Tarif Adı: </b></td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtTarifAd" runat="server" Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: left"><b>Malzemeler: </b></td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtMalzemeler" runat="server" Height="90px" Width="250px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: left"><b>Yapılışı: </b></td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtTarifYapılıs" Height="150px"  Width="250px" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: left"><b>Görsel Ekleme : </b></td>
            <td>
                <asp:FileUpload CssClass="tb5" ID="FileUpload1" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: left"><b>Tarif Öneren: </b></td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtTarifOnerenAd" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: left"><b>Mail Adresi: </b></td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtMail" runat="server" Width="200px" TextMode="Email"></asp:TextBox></td>
        </tr>
        <tr >
            <td></td>
            <td style="text-align:center">
                <asp:Button Font-Italic="true" ID="btnTarifOner" runat="server" Text="Tarif Öner" Width="150px" Height="40px" BackColor="Silver" OnClick="btnTarifOner_Click"/></td>
        </tr>


    </table>
</asp:Content>
