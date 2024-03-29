﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewRequest.aspx.cs" Inherits="ProjZEN.Admin.ViewRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            margin-left: 0px;
        }
        .auto-style16 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style17 {
            width: 577px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <table class="auto-style10">
            <tr>
                <td class="auto-style5">
                    <div class="auto-style8">
                        <br />
                        <table class="auto-style16" align="center" style="border-bottom-style: solid; border-bottom-color: #800000; border-bottom-width: 2px">
                            <tr>
                                <td class="auto-style17" style="padding-left: 15%">
                                    <br />
                        <strong><span class="auto-style7"> 
                                    <asp:Panel ID="Panel2" runat="server" Width="415px">
                                        <strong><span class="auto-style7">
                                        <asp:DetailsView ID="RequesterDetails" runat="server" AutoGenerateRows="False" DataKeyNames="Email,RNo" DataSourceID="SqlDataSource1" Height="50px" Width="265px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                            <Fields>
                                                <asp:BoundField DataField="RId" HeaderText="RId" InsertVisible="False" ReadOnly="True" SortExpression="RId" />
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                                <asp:BoundField DataField="RequiredGroup" HeaderText="RequiredGroup" SortExpression="RequiredGroup" />
                                                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                                                <asp:BoundField DataField="RNo" HeaderText="RNo" ReadOnly="True" SortExpression="RNo" InsertVisible="False" />
                                                <asp:BoundField DataField="DateOfRequest" HeaderText="DateOfRequest" SortExpression="DateOfRequest" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                            </Fields>
                                            <FooterStyle BackColor="Tan" />
                                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                        </asp:DetailsView>
                                        </span></strong>
                                        <br />
                                    </asp:Panel>
                    </span></strong>
                                    <br />
                                    <strong><span class="auto-style7"> 
                                    <asp:Panel ID="Panel3" runat="server" Width="469px">
                                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="265px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style15" DataKeyNames="Email,RNo" DataSourceID="SqlDataSource2" GridLines="None" ForeColor="Black">
                                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                            <Fields>
                                                <asp:BoundField DataField="RId" HeaderText="RId" InsertVisible="False" ReadOnly="True" SortExpression="RId" />
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                                <asp:BoundField DataField="RequiredGroup" HeaderText="RequiredGroup" SortExpression="RequiredGroup" />
                                                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                                                <asp:BoundField DataField="RNo" HeaderText="RNo" InsertVisible="False" ReadOnly="True" SortExpression="RNo" />
                                                <asp:BoundField DataField="DateOfRequest" HeaderText="DateOfRequest" SortExpression="DateOfRequest" />
                                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                            </Fields>
                                            <FooterStyle BackColor="Tan" />
                                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                        </asp:DetailsView>
                                        <br />
                                    </asp:Panel>
                    </span></strong></td>
                                <td class="auto-style14" style="border-left-style: solid; border-left-width: 2px; border-left-color: #800000">
                        <strong><span class="auto-style7"> 
                                <asp:Image ID="BRImageDB" runat="server" Width="279px" />
                    </span></strong></td>
                            </tr>
                        </table>
                        <strong><span class="auto-style7"> 
                    </div>
                    <div>
                        <div class="auto-style14">
                            <br />
                            <br />
                            &nbsp;&nbsp;
                            <asp:Button ID="ApproveButton" runat="server" Text="Approve" />
&nbsp;&nbsp;
                            <asp:Button ID="DisapproveButton" runat="server" Text="Disapprove" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="DeleteButton" runat="server" Text="Delete Request" Width="181px" />
                            <br />
                        <strong><span class="auto-style7"> 
                            <br />
                            <asp:Button ID="ListButton" runat="server" Text="Back to the List" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="LogoutButton" runat="server" Text="Log Out" />
                    </span></strong>
                            <br />
                        </div>
                    </div>
                    <br />
                    </span></strong>
                </td>
            </tr>
        </table>
     <br />
        <div class="auto-style9">
        </div>
    </p>
</asp:Content>
