<%@ Page Title="" Language="C#" MasterPageFile="~/Donor.Master" AutoEventWireup="true" CodeBehind="DonationHistory.aspx.cs" Inherits="ProjZEN.DonationHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style37" align="center" style="padding-left: 50px">
    <tr>
                <td class="auto-style46">Donation Date</td>
                <td class="auto-style52">
                    <asp:TextBox ID="txtDate" TextMode="Date" runat="server" ></asp:TextBox> <%--calender control--%>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            


            <tr>
                <td class="auto-style44">Description:</td>
                <td class="auto-style52">
                    <strong>
                    <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </strong>
                </td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td class="auto-style52">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                </td>
                <td class="auto-style33"><strong>
                    <asp:Label ID="RegLbl" runat="server" CssClass="auto-style58"></asp:Label>
                    </strong></td>
            </tr>
         </table>
     <div id="DvHistory" runat="server" visible="false">
        <asp:Label ID="LblLbel" Text="Donor History Details" runat="server"></asp:Label>
        <asp:GridView ID="grdHistory" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="Donate Date">
                <ItemTemplate>
                    <asp:Label ID="lblDonate_Date" runat="server" Text='<%# Eval("Donate_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>            
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
