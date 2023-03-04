<%@ Page Title="" Language="C#" MasterPageFile="~/Donor.Master" AutoEventWireup="true" CodeBehind="DonorProfile.aspx.cs" Inherits="ProjZEN.DonorProfile" %>
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
            text-align: left;
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
            <asp:Label ID="Label13" runat="server" CssClass="auto-style57" Text="Edit Profile"></asp:Label>
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
                <td class="auto-style39">
                    <asp:Label ID="Label4" runat="server" Text="Blood Group:"></asp:Label>
                </td>
                <td class="auto-style53">
                    <asp:DropDownList ID="BBList" runat="server" Width="200px">
                        <asp:ListItem>Select Group</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style55">
                    &nbsp;</td>
            </tr>
             <tr>
                    <td class="auto-style43">Gender: </td>
                    <td>
                        <asp:RadioButton ID="rbmale" runat="server" ForeColor="Black" GroupName="gen" Text="Male" />
                        &nbsp;<asp:RadioButton ID="rbfemale" runat="server" GroupName="gen" Text="Female" />
                    </td>
                    <td class="auto-style45">&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style39">Age</td>
                <td class="auto-style53"><strong>
                    <asp:TextBox ID="TxtAge" runat="server" BorderColor="Maroon" BorderWidth="2px" Height="30px" Width="397px"></asp:TextBox>
                    </strong></td>
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
                <td class="auto-style46">Secondary Contact</td>
                <td class="auto-style52">
                    <asp:TextBox ID="TXTcontact1" runat="server" Height="18px" Width="351px"></asp:TextBox>
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
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style52">
                    <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" />
                </td>
                <td class="auto-style33"><strong>
                    <asp:Label ID="RegLbl" runat="server" CssClass="auto-style58"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
