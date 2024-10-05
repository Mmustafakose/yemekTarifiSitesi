<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminTarifOneriDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.adminTarifOneriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: start">
                            <asp:Label runat="server" Font-Size="Large"> <%# Eval("yemekAd") %> </asp:Label></td>

                        <td style="text-align: center; width: 50px;">
                            <a href="adminYemekDetay.aspx">
                                <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/icon/delete.png" /></a>
                        </td>

                        <td style="text-align: center; width: 50px">
                            <a href="adminYemekDüzenleme.aspx>">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/icon/update.png" Height="30px" Width="30px" /></a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <table border="1" style="width: 100%">
        <tr>
            <td>&nbsp</td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td style="text-align: end">Tarif Ad: </td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Width="98%"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: end">Tarif Malzemeler: </td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" Width="98%" Height="100px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: end">Yapılışı: </td>
            <td>
                <asp:TextBox ID="txtYapılıs" runat="server" Width="98%" TextMode="MultiLine" Height="200px"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="text-align: end">Tarif Resim: </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align: end">Tarif Öneren: </td>
            <td>
                <asp:TextBox ID="txtOneren" runat="server" Width="98%" Height="100px"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="text-align: end">Tarif Öneren Mail: </td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="98%" Height="100px"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="text-align: end">Kategori: </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button runat="server" ID="btnOnayla" Text="Onayla" OnClick="btnOnayla_Click" /></td>
        </tr>
    </table>

</asp:Content>
