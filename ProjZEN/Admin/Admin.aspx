<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ProjZEN.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .style6
        {
            text-align: center;
            color: #0000FF;
        }
        .style7
        {
            text-align: center;
            color: #0033CC;
        }
        .style8
        {
            color: #0000FF;
        }
        .p1
        {
            width:auto;
            margin-left:20%;
            margin-right:20%;
        }
         .p2
        {
            width:auto;
            margin-left:20%;
            margin-right:20%;
        }
        .g1
        {
            width:auto;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <asp:Panel class="p1" ID="Panel1" runat="server">
    <h1 class="style6"><strong>Blood Request</strong></h1>
        <table>
            <tr>
                <td>
                    <asp:Button ID="BackButton" runat="server" Text="Back" Width="100px" OnClick="BackButton_Click" />
                </td>
            </tr>
        </table>
        <br />
        <div class="auto-style14">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RNo" ForeColor="#333333" GridLines="None" Width="100%"><%--DataSourceID="SqlDataSource1"--%>
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RNo" HeaderText="RNo" InsertVisible="False" ReadOnly="True" SortExpression="RNo" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="DateOfRequest" HeaderText="DateOfRequest" SortExpression="DateOfRequest" />
                    <asp:HyperLinkField DataNavigateUrlFields="RNo" DataNavigateUrlFormatString="ViewRequest.aspx?RNo={0}" HeaderText="View Details" Text="View" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </asp:Panel>
    <br />
    
    <%--<asp:Panel class="p2" ID="Panel2" runat="server">
    <h2 class="style7"><strong><span class="style8">Blood Donation Request</span>
        </strong> </h2>
    </asp:Panel>--%>
</div>
</asp:Content>
