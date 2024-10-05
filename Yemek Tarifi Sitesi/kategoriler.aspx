<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">

        <table border="1" style="width: 100%">
            <tr>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="Button1" runat="server" Font-Bold="true" OnClick="Button1_Click" /></td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="Button2" runat="server" OnClick="Button2_Click" /></td>
                <td style="text-align: center">KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </div>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: start">
                            <asp:Label runat="server" Font-Size="Large"> <%# Eval("kategoriAd") %> </asp:Label></td>

                        <td style="text-align: center; width: 50px;">
                            <a href="kategoriler.aspx?KategoriId=<%# Eval("kategoriId") %>&islem=sil">
                                <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/delete.png" /></a>
                        </td>

                        <td style="text-align: center; width: 50px">
                            <a href="adminKategoriDetay.aspx?kategoriId=<%# Eval("kategoriId") %>"><asp:Image ID="Image2" runat="server" ImageUrl="~/icon/update.png" Height="30px" Width="30px" /></a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div style="background-color: white">&nbsp</div>
    <asp:Panel ID="Panel1" runat="server" Width="100%">
        <div style="text-align: center">

            <table border="1" style="width: 100%">
                <tr>
                    <td style="text-align: start; width: 30px">
                        <asp:Button Height="30px" Text="+" Width="30px" ID="Button3" runat="server" Font-Bold="true" OnClick="EklemeArtı_Click" /></td>

                    <td style="text-align: start; width: 30px">
                        <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="Button4" runat="server" OnClick="EklemeEksi_Click" /></td>

                    <td style="text-align: center">KATEGORİ EKLEME
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>


    <asp:Panel ID="Panel3" runat="server">
        <table>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Kategori Ad: </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Kategori İkon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button runat="server" ID="btnEkle" Text="Ekle" Font-Bold="true" Font-Size="12" Width="100px" OnClick="btnEkle_Click" /></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
