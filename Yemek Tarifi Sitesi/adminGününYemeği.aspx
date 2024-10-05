<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminGününYemeği.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminGününYemeği" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">

        <table border="1" style="width: 100%">
            <tr>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="artı" runat="server" Font-Bold="true" OnClick="artı_Click" />
                </td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="eksi" runat="server" OnClick="eksi_Click" />
                </td>
                <td style="text-align: center">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </div>

    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: start">
                            <asp:Label runat="server" Font-Size="Large"><%# Eval("yemekAd") %> </asp:Label>
                        </td>

                        <%--<td style="text-align: center; width: 50px;">
                        <a href="adminYorum.aspx?yorumId=<%# Eval("yorumId") %>&islem=sil">
                            <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/chese.jpg" />
                        </a>
                    </td>--%>

                        <td style="text-align: center; width: 50px">
                            <a href="adminYemekDüzenleme.aspx?yemekId=<%# Eval("yemekId") %>">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/read_edit_icon.png" Height="30px" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
