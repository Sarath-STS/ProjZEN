<%@ Page Title="" Language="C#" MasterPageFile="~/Donor.Master" AutoEventWireup="true" CodeBehind="DonorRequest.aspx.cs" Inherits="ProjZEN.DonorRequest" %>
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
            <asp:TemplateField HeaderText="User Name">
                <ItemTemplate>
                    <asp:Label ID="lblD_Name" runat="server" Text='<%# Eval("U_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Requested BloodGroup">
                <ItemTemplate>
                    <asp:Label ID="lblRequested_BloodGroup" runat="server" Text='<%# Eval("Requested_BloodGroup") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

           <asp:TemplateField HeaderText="Accept">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkAccept" runat="server" OnClick="lnkAccept_Click">Accept Request</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Reject">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkReject" runat="server" OnClick="lnkReject_Click">Reject Request</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
      
    </asp:GridView>
</div> 
    <div>
        <asp:Label ID="RegLbl" runat="server" CssClass="auto-style58"></asp:Label>
    </div>
</asp:Content>
