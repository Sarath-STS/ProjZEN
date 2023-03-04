<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserRequest.aspx.cs" Inherits="ProjZEN.UserRequest" %>
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
        DataKeyNames="D_id" AutoGenerateColumns="false" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="Donor ID">
                <ItemTemplate>
                    <asp:Label ID="lblD_id" runat="server" Text='<%# Eval("D_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="D_Name" runat="server" Text='<%# Eval("D_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Age">
                <ItemTemplate>
                    <asp:Label ID="lblage" runat="server" Text='<%# Eval("D_age") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact">
                <ItemTemplate>
                    <asp:Label ID="lblD_Contact" runat="server" Text='<%# Eval("D_Contact") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sec.Contact">
                <ItemTemplate>
                    <asp:Label ID="lblD_SecContact" runat="server" Text='<%# Eval("D_SecContact") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="lblD_Gender" runat="server" Text='<%# Eval("D_Gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Blood Group">
                <ItemTemplate>
                    <asp:Label ID="lblD_bgroup" runat="server" Text='<%# Eval("D_bgroup") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Request">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkviewInvoice" runat="server" OnClick="lnkviewInvoice_Click">Send Request</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
    <div>
        <asp:Label ID="RegLbl" runat="server" CssClass="auto-style58"></asp:Label>
    </div>
</asp:Content>
