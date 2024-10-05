<%@ Page Title="" Language="C#" MasterPageFile="~/kullaniciMaster.Master" AutoEventWireup="true" CodeBehind="kategoriDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.kategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <table style="border-width: 2px" border="1">
            <tr></tr>
            <tr>
                <td>
                    <a href="yemekDetay.aspx?yemekId=<%#Eval("yemekId") %>">
                        <asp:Label runat="server" BackColor="LightBlue" ID="lblYemekAd" Font-Size="Large" Font-Bold="true"><%#Eval("yemekAd") %></asp:Label></a>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" ID="lblYemekMalzemeler" Font-Bold="true" Text="Malzemeler :  "> <%#Eval("yemekMalzeme") %>:  </asp:Label></td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" ID="lblYemekTarifi" Text="Tarifi :  " Font-Bold="true"> <%#Eval("yemekTarif") %>:  </asp:Label></td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" Text="Yüklenme Tarihi: "></asp:Label><%#Eval("yemekTarih") %></td>
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" Text="<i><b>Puan: </b></i>"></asp:Label><%#Eval("yemekPuan") %></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
