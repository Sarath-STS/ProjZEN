<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="ProjZEN.UserReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
        <h1 style="background-color: white; color: #851212; text-align: center">USER REGISTRATION</h1>
       <table style="padding: 30px; background-color: #851212; width: 600px; height: 950px; margin: 20; border-radius: 25px 25px 25px 25px; color: #FFFFFF; font-size: 21px; font-weight: bold; text-transform: capitalize; left: 0px; right: 20px;" align="center">

                

                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>

                    <td>

                        &nbsp;</td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox></td>

                    <td>

                        &nbsp;</td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td>Type</td>
                    <td>
                        <asp:DropDownList ID="DropDown" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem Value="1">Organisation</asp:ListItem>
                            <asp:ListItem Value="2">Person</asp:ListItem>
                            <asp:ListItem Value="3">Camp</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td>Address</td>
                    <td>
            <strong>
                        <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </strong>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>


                <tr>
                    <td>Contact </td>
                    <td>
                        <asp:TextBox ID="TXTCONTCT" runat="server"></asp:TextBox></td>

                    <td>

                        &nbsp;</td>
                </tr>


                <tr>
                    <td>Contact 1</td>
                    <td>
                        <asp:TextBox ID="TXTcontact2" runat="server"></asp:TextBox></td>

                    <td>

                        &nbsp;</td>
                </tr>


                <tr>
                    <td>Contact Name</td>
                    <td>
                        <asp:TextBox ID="TxtCName" runat="server"></asp:TextBox></td>

                    <td>

                        &nbsp;</td>
                </tr>


                <tr>
                    <td>Contact Name1</td>
                    <td>
                        <asp:TextBox ID="TxtCname1" runat="server"></asp:TextBox></td>

                    <td>

                        &nbsp;</td>
                </tr>


                <tr>
                    <td>
            <strong>Image</strong></td>
                    <td>
            <strong>
                        <asp:FileUpload ID="FileUpload" runat="server" />
            </strong>
                    </td>

                    <td>

                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>

                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="#CC0000" ForeColor="White" Height="34px" Width="158px" OnClick="Button1_Click" />
                    </td>

                    <td>&nbsp;</td>
                </tr>

           <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="RegLbl" runat="server"></asp:Label>
                    </td>

                    <td>&nbsp;</td>
                </tr>
            </table>
            <div class="register-link mt-1 text-center" id="Dsuccess" runat="server" visible="false">
                  <p>User <a href="LOGIN.aspx">Login Here</a></p>
                </div>
    </div>
    </form>
</body>
</html>
