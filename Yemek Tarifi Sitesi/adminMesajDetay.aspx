<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminMesajDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminMesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>Mesaj Gönderen: </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Başlık: </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Mail Adresi: </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="200"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Mesaj İçerik: </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="200" TextMode="MultiLine" Height="100"></asp:TextBox></td>
        </tr>
    </table>

</asp:Content>
