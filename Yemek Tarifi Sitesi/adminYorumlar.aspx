<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminYorumlar.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminYorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">

        <table border="1" style="width: 100%">
            <tr>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="Button1" runat="server" Font-Bold="true" OnClick="Artı_Click" />
                </td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="Button2" runat="server" OnClick="Eksi_Click" />
                </td>
                <td style="text-align: center">ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </div>

    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: start">
                            <asp:Label runat="server" Font-Size="Large"><%# Eval("yorumAdSoyad") %> </asp:Label>
                        </td>

                        <td style="text-align: center; width: 50px;">
                            <a href="adminYorum.aspx?yorumId=<%# Eval("yorumId") %>&islem=sil">
                                <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/chese.jpg" />
                            </a>
                        </td>

                        <td style="text-align: center; width: 50px">
                            <a href="adminYorumDetay.aspx?yorumId=<%# Eval("yorumId") %>">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/update.png" Height="30px" Width="30px" />
                            </a></td>
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
                    <asp:Button Height="30px" Text="+" Width="30px" ID="Button3" runat="server" Font-Bold="true" OnClick="Arti1_Click" />
                </td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="Button4" runat="server" OnClick="Eksi1_Click" />
                </td>
                <td style="text-align: center">ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </div>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="100%">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: start">
                            <asp:Label runat="server" Font-Size="Large"><%# Eval("yorumAdSoyad") %> </asp:Label>
                        </td>

                        <%--<td style="text-align: center; width: 50px;">
                            <a href="adminYorumDetay.aspx?yorumId=<%# Eval("yorumId") %>&islem=sil">
                                <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/delete.png" />
                            </a>
                        </td>--%>

                        <td style="text-align: center; width: 50px">
                            <a href="adminYorumDetay.aspx?yorumId=<%# Eval("yorumId") %>">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/update.png" Height="30px" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
