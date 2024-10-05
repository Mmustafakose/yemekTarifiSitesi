<%@ Page Title="" Language="C#" MasterPageFile="~/kullaniciMaster.Master" AutoEventWireup="true" CodeBehind="yemekDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi.yemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" ID="lblyemekad" Font-Bold="true" Font-Size="28pt" Text="3"></asp:Label>

    <asp:DataList ID="DataList1" runat="server" Width="100%" >
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblYorumADSoyad" ><%#Eval("yorumAdSoyad") %></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblYorumIcerik" ><%#Eval("yorumicerik") %> </br></asp:Label>
                        <asp:Label style="border-style:inset;border-width:thin ;width:100%" runat="server" ID="lblYorumTarih" ><%#Eval("yorumTarih") %></asp:Label>
                    </td>
                    
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br/>
    <div style="background-color:burlywood">Yorum Yapma Paneli</div>
    <asp:Panel runat="server">
        <table>
            <tr>
                <td>&nbsp</td>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="text-align:end">Ad Soyad: </td>
                <td><asp:TextBox Width="200px" Height="20px" runat="server" ID="txtAdSoyad"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align:end">Mail Adresi: </td>
                <td><asp:TextBox Width="200px" Height="20px" runat="server" ID="txtmail"></asp:TextBox></td>
            </tr>
            <tr>
                <td >Yorumunuz: </td>
                <td><asp:TextBox  runat="server" ID="txtyorumunuz" TextMode="MultiLine" Width="200px" Height="90px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>&nbsp</td>
                <td><asp:Button  runat="server" ID="btnYorumYap" Text="Yorum Yap" Font-Bold="true" Font-Size="Large" Width="100px" Height="30px" OnClick="btnYorumYap_Click"/></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
