<%@ Page Title="" Language="C#" MasterPageFile="~/kullaniciMaster.Master" AutoEventWireup="true" CodeBehind="gununyemegi.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.gununyemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" >
        <ItemTemplate>
            <table >
                <tr style="text-align:center">
                    <td>
                        <asp:Label ID="Label1" Font-Bold="true" Font-Size="18" runat="server" Text="Yemeğin Adı: "> <%# Eval("yemekAd") %></asp:Label>
                    </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="<b>Malzemeler: </b>"> <%# Eval("yemekMalzeme") %></asp:Label>
                    </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="<b>Yapılışı: </b>"> <%# Eval("yemekTarif") %> </asp:Label>
                    </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("yemekResim") %>' />
                    </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="<b>Puan: </b>"> <%# Eval("yemekPuan") %> </asp:Label>
                    </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="<b>Tarih: </b>"><i> <%# Eval("yemekTarih") %> </i></asp:Label>
                    </td>
                </tr>
                
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
