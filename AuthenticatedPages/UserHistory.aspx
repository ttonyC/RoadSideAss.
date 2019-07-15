<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="UserHistory.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .max-width-center {
            max-width: 100%;
            margin: 0 auto;
        }

        .pad-top {
            padding-top: 20px;
        }
        .center {
            margin-right: auto;
            margin-left: auto;
            max-width: 70%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="text-center pad-top">
        <h1>History Transaction for user: <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label> </h1>
        <hr class="max-width-center" />
        <br />
    </div>

    <div class="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TransactionID], [CarID], [ServiceID], [MechanicID], [StartDate], [ExpectFinishDate], [FinishDate], [Status], [TotalCost], [UnitAmount] FROM [Transaction] WHERE ([CustomerID] = @CustomerID)">
            <SelectParameters>
                <asp:SessionParameter Name="CustomerID" SessionField="UserID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TransactionID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="TransactionID" HeaderText="TransactionID" InsertVisible="False" ReadOnly="True" SortExpression="TransactionID" />
                <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
                <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" SortExpression="ServiceID" />
                <asp:BoundField DataField="MechanicID" HeaderText="MechanicID" SortExpression="MechanicID" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="ExpectFinishDate" HeaderText="ExpectFinishDate" SortExpression="ExpectFinishDate" />
                <asp:BoundField DataField="FinishDate" HeaderText="FinishDate" SortExpression="FinishDate" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
                <asp:BoundField DataField="UnitAmount" HeaderText="UnitAmount" SortExpression="UnitAmount" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>



</asp:Content>

