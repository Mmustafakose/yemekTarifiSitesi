<%@ Page Title="" Language="C#" MasterPageFile="~/kullaniciMaster.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Mesaj Paneli" Font-Bold="true" Font-Italic="true" Font-Size="Large"></asp:Label></td>
            
        </tr>
        <tr>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td style="text-align:end">Ad Soyad:  </td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtAdSoyad" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:end">Mail Adresi:  </td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtMail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:end">Konu: </td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtkonu" runat="server"></asp:TextBox></td>
        </tr>
        <tr style="text-align:end">
            <td >Mesaj: </td>
            <td>
                <asp:TextBox CssClass="tb5" ID="txtMeajIcerik" runat="server" TextMode="MultiLine" Height="150px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>&nbsp</td>
            <td><asp:Button CssClass="btn" runat="server" ID="btnGonder"  text="Gönder" Width="150" Height="30px" OnClick="btnGonder_Click" /></td>
        </tr>
    </table>
</asp:Content>
