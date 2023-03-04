<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="ProjZEN.FeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="padding: 10px; margin: 10px; width: 403px; height: 158px; font-family: Arial, Helvetica, sans-serif;" align="center">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="EmailId"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td style="width: 100px"></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="FeedBack"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 100px"></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                    Text="Submit" /></td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Clear" OnClick="Button2_Click" />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td style="width: 100px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 100px"></td>
            <td style="width: 100px">&nbsp;</td>
            <td style="width: 100px"></td>
        </tr>
    </table>
</asp:Content>
