<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="InactiveUser.aspx.cs" Inherits="ProjZEN.InactiveUser" %>
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
        DataKeyNames="U_id" AutoGenerateColumns="false" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="User ID">
                <ItemTemplate>
                    <asp:Label ID="lblU_id" runat="server" Text='<%# Eval("U_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="D_Name" runat="server" Text='<%# Eval("U_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <ItemTemplate>
                    <asp:Label ID="lblage" runat="server" Text='<%# Eval("U_Type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact">
                <ItemTemplate>
                    <asp:Label ID="lblD_Contact" runat="server" Text='<%# Eval("U_Contact") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sec.Contact">
                <ItemTemplate>
                    <asp:Label ID="lblD_SecContact" runat="server" Text='<%# Eval("U_Contact2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ContactName">
                <ItemTemplate>
                    <asp:Label ID="lblU_CName" runat="server" Text='<%# Eval("U_CName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sec.ContactName">
                <ItemTemplate>
                    <asp:Label ID="lblU_CName2" runat="server" Text='<%# Eval("U_CName2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="INACTIVE">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkviewInvoice" runat="server" OnClick="lnkviewInvoice_Click">InActive User</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
</asp:Content>
