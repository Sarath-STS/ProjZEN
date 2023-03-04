﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="ProjZEN.ViewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover"
        DataKeyNames="U_id" AutoGenerateColumns="False" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="User ID">
                <ItemTemplate>   
                    <asp:Label ID="lblU_id" runat="server" Text='<%# Eval("U_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="U_Name" runat="server" Text='<%# Eval("U_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <ItemTemplate>
                    <asp:Label ID="lblU_Type" runat="server" Text='<%# Eval("U_Type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact">
                <ItemTemplate>
                    <asp:Label ID="lblU_Contact" runat="server" Text='<%# Eval("U_Contact") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sec.Contact">
                <ItemTemplate>
                    <asp:Label ID="lblU_SecContact" runat="server" Text='<%# Eval("U_Contact2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact Name">
                <ItemTemplate>
                    <asp:Label ID="lblU_CName" runat="server" Text='<%# Eval("U_CName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sec.Contact Name">
                <ItemTemplate>
                    <asp:Label ID="lblU_CName2" runat="server" Text='<%# Eval("U_CName2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
</div>

</asp:Content>
