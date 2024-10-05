<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminYemekDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminYemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">

        <table border="1" style="width: 100%">
            <tr>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="Button1" runat="server" Font-Bold="true" OnClick="Button1_Click" /></td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="Button2" runat="server"  OnClick="Button2_Click"  /></td>
                <td style="text-align: center">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </div>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%" >
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: start">
                            <asp:Label runat="server" Font-Size="Large"> <%# Eval("yemekAd") %> </asp:Label></td>

                        <td style="text-align: center; width: 50px;">
                            <a href="adminYemekDetay.aspx?yemekId=<%# Eval("yemekId") %>&islem=sil">
                                <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/delete.png" /></a>
                        </td>

                        <td style="text-align: center; width: 50px">
                            <a href="adminYemekDüzenleme.aspx?yemekId=<%# Eval("yemekId") %>">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/update.png" Height="30px" Width="30px" /></a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div style="background-color: white">&nbsp</div>


    <div style="text-align: center">
        <table border="1" style="width: 100%">
            <tr>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="Button3" runat="server" Font-Bold="true" OnClick="Button3_Click" /></td>

                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="Button4" runat="server" OnClick="Button4_Click"  /></td>

                <td style="text-align: center">YEMEK EKLEME
                </td>
            </tr>
        </table>
    </div>



    <asp:Panel ID="Panel3" runat="server" Width="100%">
        <table border="1" style="width:100%">
            <tr>
                <td colspan="2">&nbsp</td>
            </tr>
            <tr>
                <td style="text-align:end">Yemek Ad: </td>
                <td>
                    <asp:TextBox ID="txtYemekAd" runat="server" Width="98%" ></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align:end">Malzemeler:</td>
                <td>
                    <asp:TextBox ID="txtMalzemeler" runat="server"  TextMode="MultiLine" Height="100"  Width="98%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align:end">Yemek Tarifi</td>
                <td>
                    <asp:TextBox ID="txtYemekTarifi" runat="server" TextMode="MultiLine" Height="200"  Width="98%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align:end">Kategori</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"  Width="98%"></asp:DropDownList></td>
            </tr>
            <tr>
                <td></td>
                <td style="text-align:center">
                    <asp:Button runat="server" ID="btnEkle" Text="Ekle" Font-Bold="true" Font-Size="12" Width="100px" OnClick="btnEkle_Click" /></td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
