<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminTarifÖnerileri.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminTarifÖnerileri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">

        <table border="1" style="width:100%">
            <tr>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="artı" runat="server" Font-Bold="true" OnClick="artı_Click" />
                </td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="eksi" runat="server" OnClick="eksi_Click" />
                </td>
                <td style="text-align: center">ONAYSIZ TARİF ÖNERİLERİ LİSTESİ</td>
            </tr>
        </table>
    </div>

    <div style="width:100%">

        <asp:Panel ID="Panel1" runat="server" >
            <asp:DataList ID="DataList1" runat="server" Width="100%">
                <ItemTemplate>
                    <table border="1" style="width: 100%">
                        <tr>
                            <td style="text-align: start">
                                <asp:Label runat="server" Font-Size="Large"><%# Eval("tarifAd") %> </asp:Label>
                            </td>

                            <%--<td style="text-align: center; width: 50px;">
                    <a href="adminYorum.aspx?yorumId=<%# Eval("yorumId") %>&islem=sil">
                        <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/chese.jpg" />
                    </a>
                </td>--%>

                            <td style="text-align: center; width: 50px">
                                <a href="adminTarifOneriDetay.aspx?tarifId=<%#Eval("tarifId") %>">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/update.png" Height="30px" Width="30px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

    </div>
    
    <div style="text-align: center" >

        <table border="1" style="width: 100%">
            <tr>
                <td style="text-align: start; width:30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="Button1" runat="server" Font-Bold="true" OnClick="artı1_Click" />
                </td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="Button2" runat="server" OnClick="eksi1_Click" />
                </td>
                <td style="text-align: center">ONAYLI TARİF ÖNERİLERİ LİSTESİ</td>
            </tr>
        </table>
    </div>

    <div>

        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="100%">
                <ItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td style="text-align: start">
                                <asp:Label runat="server" Font-Size="Large"><%# Eval("tarifAd") %> </asp:Label>
                            </td>

                            <%--<td style="text-align: center; width: 50px;">
                <a href="adminYorum.aspx?yorumId=<%# Eval("yorumId") %>&islem=sil">
                    <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/chese.jpg" />
                </a>
            </td>--%>

                            <td style="text-align: center; width: 50px">
                                <a href="adminTarifOneriDetay.aspx?tarifId=<%#Eval("tarifId") %>">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/update.png" Height="30px" Width="30px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

    </div>

</asp:Content>
