<%@ Page Title="" Language="C#" MasterPageFile="~/kullaniciMaster.Master" AutoEventWireup="true" CodeBehind="hakkımızda.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>
                <asp:Label runat="server">&nbsp</asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" Text="Hakkımızda" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server">&nbsp</asp:Label>
            </td>
        </tr>
    </table>

    <asp:DataList ID="DataList1" runat="server" Width="100%">
        <ItemTemplate>
            <asp:Label ID="lblhakkımızda" runat="server" Text='<%#Eval("metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <p>&nbsp</p>
    <table>
        <tr>
            <td style="text-align:center">
                <asp:Image runat="server" Width="90%" ImageUrl="~/Image/kisisel-blog.jpg" /></td>
        </tr>
    </table>

</asp:Content>


