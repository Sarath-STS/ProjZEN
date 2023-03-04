<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="ProjZEN.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style33 {
            height: 40px;
            text-align: left;
        }
        .auto-style37 {
            width: 98%;
        }
        .auto-style39 {
            height: 40px;
            width: 273px;
            text-align: left;
        }
        .auto-style43 {
            text-align: center;
        }
        .auto-style44 {
            width: 264px;
            height: 40px;
            text-align: left;
        }
        .auto-style46 {
            width: 264px;
            height: 29px;
            text-align: left;
        }
        .auto-style52 {
            height: 40px;
            width: 275px;
            text-align: left;
        }
        .auto-style53 {
            width: 275px;
            text-align: left;
        }
        .auto-style55 {
            text-align: left;
        }
        .auto-style57 {
            font-size: large;
            color: #800000;
        }
        .auto-style58 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <div class="auto-style43">
            <br />
            <strong>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style57" Text="Profile"></asp:Label>
            </strong>
            <br />
            <br />
        </div>
        <table class="auto-style37" align="center" style="padding-left: 50px">
            <tr>
                <td class="auto-style44">
                    <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="TxtName" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style33">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">Type</td>
                <td class="auto-style53">
                    <asp:DropDownList ID="DropDown" runat="server" Height="22px" Width="197px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem Value="1">Organisation</asp:ListItem>
                        <asp:ListItem Value="2">Person</asp:ListItem>
                        <asp:ListItem Value="3">Camp</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46">
                    Contact
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="TXTCONTCT" runat="server" Width="351px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46">Contact Name</td>
                <td class="auto-style52">
                    <asp:TextBox ID="TxtCName" runat="server" Width="348px"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style46">Secondary Contact </td>
                <td class="auto-style52">
                    <asp:TextBox ID="TXTcontact1" runat="server" Height="18px" Width="351px"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style46">Secondary Contact Name</td>
                <td class="auto-style52">
                    <asp:TextBox ID="TxtCname1" runat="server" Width="344px"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46"><strong class="auto-style58">Image</strong></td>
                <td class="auto-style52"><strong>
                    <asp:FileUpload ID="FileUpload" runat="server" CssClass="auto-style58" />
                    </strong></td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44">Address:</td>
                <td class="auto-style52">
                    <strong>
                    <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </strong>
                </td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style52">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="UpdateButton_Click" Text="Update" />
                </td>
                <td class="auto-style33"><strong>
                    <asp:Label ID="RegLbl" runat="server" CssClass="auto-style58"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
