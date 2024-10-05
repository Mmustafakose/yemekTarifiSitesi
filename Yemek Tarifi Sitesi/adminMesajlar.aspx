<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminMesajlar.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">

        <table border="1" style="width: 100%">
            <tr>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="Artı" runat="server" Font-Bold="true" OnClick="Artı_Click" />
                </td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="Eksi" runat="server" OnClick="Eksi_Click" />
                </td>
                <td style="text-align: center">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </div>

    

    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: start">
                            <asp:Label runat="server" Font-Size="Large"><%# Eval("mesajGonderen") %> </asp:Label>
                        </td>

                        <td style="text-align: center; width: 50px">
                            <a href="adminMesajDetay.aspx?mesajId=<%# Eval("mesajId") %>">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/read_edit_icon.png" Height="30px" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <div style="background-color:white">&nbsp</div>
</asp:Content>
