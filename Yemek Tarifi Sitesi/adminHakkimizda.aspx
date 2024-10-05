<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminHakkimizda.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminHakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">

        <table border="1" style="width: 100%">
            <tr>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="+" Width="30px" ID="artı" runat="server" Font-Bold="true" OnClick="panelArti"  />
                </td>
                <td style="text-align: start; width: 30px">
                    <asp:Button Height="30px" Text="-" Width="30px" Font-Bold="true" ID="eksi" runat="server"  OnClick="panelEksi" />
                </td>
                <td style="text-align: center">HAKKIMIZDA</td>
            </tr>
        </table>
    </div>

    <div style="width: 100%">

        <asp:Panel ID="Panel1" runat="server">

            <table style="width:98%">
                <tr>
                    <td><asp:TextBox runat="server" ID="txtHakkımızda" TextMode="MultiLine" Width="100%" Height="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" ID="btnGuncelle" Text="Güncelle" OnClick="btnGüncelle" />
                    </td>
                </tr>
            </table>

        </asp:Panel>

    </div>

</asp:Content>
