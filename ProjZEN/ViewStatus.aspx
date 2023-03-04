<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ViewStatus.aspx.cs" Inherits="ProjZEN.ViewStatus" %>
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
       AutoGenerateColumns="false" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="Request ID">
                <ItemTemplate>
                    <asp:Label ID="lblRId" runat="server" Text='<%# Eval("RId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Requested Date">
                <ItemTemplate>
                    <asp:Label ID="Requested_Date" runat="server" Text='<%# Eval("Requested_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Donor Name">
                <ItemTemplate>
                    <asp:Label ID="lblD_Name" runat="server" Text='<%# Eval("D_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Requested BloodGroup">
                <ItemTemplate>
                    <asp:Label ID="lblRequested_BloodGroup" runat="server" Text='<%# Eval("Requested_BloodGroup") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Request Status">
                <ItemTemplate>
                    <asp:Label ID="lblReqStatus" runat="server" Text='<%# Eval("ReqStatus") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
        </Columns>
    </asp:GridView>
</div>
</asp:Content>
