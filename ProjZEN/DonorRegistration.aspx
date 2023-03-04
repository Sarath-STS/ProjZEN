<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonorRegistration.aspx.cs" Inherits="ProjZEN.DonorRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style34 {
            text-decoration: underline;
            color: #CC0000;
            font-size: xx-large;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style35 {
            width: 465px;
            height: 45px;
        }
        .auto-style13 {
            width: 465px;
            height: 73px;
            text-align: center;
        }
        #Reset1 {
            width: 130px;
            height: 30px;
        }
        .auto-style37 {
            left: -126px;
            top: -3px;
            width: 465px;
            height: 45px;
        }
        .auto-style41 {
            height: 73px;
        }
        .auto-style42 {
            width: 207px;
            height: 73px;
            text-align: left;
        }
    .auto-style43 {
            width: 207px;
            text-align: left;
            font-weight: bold;
            height: 45px;
        }
    .auto-style44 {
        height: 45px;
        font-size: 38pt;
        color: #CC0000;
        width: 465px;
    }
    .auto-style45 {
        height: 45px;
    }
    .auto-style46 {
        width: 207px;
        text-align: left;
        font-weight: bold;
        height: 46px;
    }
    .auto-style47 {
        height: 46px;
        font-size: 38pt;
        color: #CC0000;
        width: 465px;
    }
    .auto-style48 {
        height: 46px;
    }
    .auto-style49 {
        left: 125px;
        top: 2px;
        height: 45px;
    }
    .auto-style50 {
            width: 207px;
            height: 45px;
            text-align: left;
        }
    .auto-style51 {
        text-align: center;
    }
        .auto-style53 {
            left: 0px;
            top: 0px;
            background-color: #FFFFFF;
        }
        .auto-style54 {
            width: 100%;
            height: 11px;
            background-color: #FFFFFF;
        }
        .auto-style55 {
            text-decoration: underline;
            color: #800000;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style51">
        <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
            <strong><span class="auto-style55">
            <br />
            Registration</span><span class="auto-style34">
            <br />
            <br />
            </span>
            <table align="center" class="auto-style9">
                <tr>
                    <td class="auto-style43">Name :</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="NameText" runat="server" Height="30px" Width="431px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameText" CssClass="auto-style54" ErrorMessage="Name is required" style="color: #CC0000" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style46">E-mail :</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="EmailText" runat="server" Height="30px" Width="430px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style48">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailText" CssClass="auto-style54" ErrorMessage="E-mail is required" style="color: #CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">Password:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="PasswordText" runat="server" Height="30px" TextMode="Password" Width="432px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PasswordText" CssClass="auto-style54" ErrorMessage="Password is required" style="color: #CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">Contact No 1:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="ContactText" runat="server" Height="30px" Width="429px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ContactText" ErrorMessage="Contact No is Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </strong>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43"><strong>Contact No 2:</strong></td>
                    <td class="auto-style44">
                        <asp:TextBox ID="Contact2Text" runat="server" Height="30px" Width="429px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Contact2Text" ErrorMessage="Contact No is Required" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">Gender: </td>
                    <td class="auto-style1">
                        <asp:RadioButton ID="rbmale" runat="server" CssClass="btn_style" ForeColor="Black" GroupName="gen" Text="Male" />
                        &nbsp;<asp:RadioButton ID="rbfemale" runat="server" GroupName="gen" Text="Female" />
                    </td>
                    <td class="auto-style45">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style50">Age :</td>
                    <td class="auto-style37">
                        <strong>
                        <asp:TextBox ID="TxtAge" runat="server" BorderColor="Maroon" BorderWidth="2px" Height="30px" Width="429px"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="auto-style49">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtAge" ErrorMessage="Age Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50"><strong>Blood Group:</strong></td>
                    <td class="auto-style35">
                        <asp:DropDownList ID="GroupList" runat="server" Width="185px">
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
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="GroupList" CssClass="auto-style53" ErrorMessage="Select a Blood Group" style="color: #CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50">Select Image</td>
                    <td class="auto-style35">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="Image Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50">Address: </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtAddress" ErrorMessage="Address Required" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42"></td>
                    <td class="auto-style13">
                        <br />
                        <asp:Button ID="SubmitButton" runat="server" Height="30px" OnClick="SubmitButton_Click" Text="Submit" Width="133px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style41">
                        <asp:Label ID="RegLbl" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            </strong>
            <div class="register-link mt-1 text-center" id="Dsuccess" runat="server" visible="false">
                  <p>Donor <a href="LOGIN.aspx">Login Here</a></p>
                </div>
        </asp:Panel>
       
    </div>
    </form>
</body>
</html>
