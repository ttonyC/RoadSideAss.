<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="_Default" %>

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
        <h1>Display Transactions </h1>
        <hr class="max-width-center" />
        <br />
    </div>
    
    <div class="center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Transaction] WHERE [TransactionID] = @original_TransactionID AND [CarID] = @original_CarID AND [ServiceID] = @original_ServiceID AND [MechanicID] = @original_MechanicID AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([ExpectFinishDate] = @original_ExpectFinishDate) OR ([ExpectFinishDate] IS NULL AND @original_ExpectFinishDate IS NULL)) AND (([FinishDate] = @original_FinishDate) OR ([FinishDate] IS NULL AND @original_FinishDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([UnitAmount] = @original_UnitAmount) OR ([UnitAmount] IS NULL AND @original_UnitAmount IS NULL))" InsertCommand="INSERT INTO [Transaction] ([TransactionID], [CarID], [ServiceID], [MechanicID], [StartDate], [ExpectFinishDate], [FinishDate], [Status], [TotalCost], [UnitAmount]) VALUES (@TransactionID, @CarID, @ServiceID, @MechanicID, @StartDate, @ExpectFinishDate, @FinishDate, @Status, @TotalCost, @UnitAmount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Transaction]" UpdateCommand="UPDATE [Transaction] SET [CarID] = @CarID, [ServiceID] = @ServiceID, [MechanicID] = @MechanicID, [StartDate] = @StartDate, [ExpectFinishDate] = @ExpectFinishDate, [FinishDate] = @FinishDate, [Status] = @Status, [TotalCost] = @TotalCost, [UnitAmount] = @UnitAmount WHERE [TransactionID] = @original_TransactionID AND [CarID] = @original_CarID AND [ServiceID] = @original_ServiceID AND [MechanicID] = @original_MechanicID AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([ExpectFinishDate] = @original_ExpectFinishDate) OR ([ExpectFinishDate] IS NULL AND @original_ExpectFinishDate IS NULL)) AND (([FinishDate] = @original_FinishDate) OR ([FinishDate] IS NULL AND @original_FinishDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([UnitAmount] = @original_UnitAmount) OR ([UnitAmount] IS NULL AND @original_UnitAmount IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_TransactionID" Type="Int32" />
                    <asp:Parameter Name="original_CarID" Type="Int32" />
                    <asp:Parameter Name="original_ServiceID" Type="Int32" />
                    <asp:Parameter Name="original_MechanicID" Type="Int32" />
                    <asp:Parameter Name="original_StartDate" Type="String" />
                    <asp:Parameter Name="original_ExpectFinishDate" Type="String" />
                    <asp:Parameter Name="original_FinishDate" Type="String" />
                    <asp:Parameter Name="original_Status" Type="Int32" />
                    <asp:Parameter Name="original_TotalCost" Type="Double" />
                    <asp:Parameter Name="original_UnitAmount" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TransactionID" Type="Int32" />
                    <asp:Parameter Name="CarID" Type="Int32" />
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                    <asp:Parameter Name="MechanicID" Type="Int32" />
                    <asp:Parameter Name="StartDate" Type="String" />
                    <asp:Parameter Name="ExpectFinishDate" Type="String" />
                    <asp:Parameter Name="FinishDate" Type="String" />
                    <asp:Parameter Name="Status" Type="Int32" />
                    <asp:Parameter Name="TotalCost" Type="Double" />
                    <asp:Parameter Name="UnitAmount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CarID" Type="Int32" />
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                    <asp:Parameter Name="MechanicID" Type="Int32" />
                    <asp:Parameter Name="StartDate" Type="String" />
                    <asp:Parameter Name="ExpectFinishDate" Type="String" />
                    <asp:Parameter Name="FinishDate" Type="String" />
                    <asp:Parameter Name="Status" Type="Int32" />
                    <asp:Parameter Name="TotalCost" Type="Double" />
                    <asp:Parameter Name="UnitAmount" Type="Int32" />
                    <asp:Parameter Name="original_TransactionID" Type="Int32" />
                    <asp:Parameter Name="original_CarID" Type="Int32" />
                    <asp:Parameter Name="original_ServiceID" Type="Int32" />
                    <asp:Parameter Name="original_MechanicID" Type="Int32" />
                    <asp:Parameter Name="original_StartDate" Type="String" />
                    <asp:Parameter Name="original_ExpectFinishDate" Type="String" />
                    <asp:Parameter Name="original_FinishDate" Type="String" />
                    <asp:Parameter Name="original_Status" Type="Int32" />
                    <asp:Parameter Name="original_TotalCost" Type="Double" />
                    <asp:Parameter Name="original_UnitAmount" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TransactionID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowUpdated="GridView1_RowUpdated">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="TransactionID" HeaderText="TransactionID" ReadOnly="True" SortExpression="TransactionID" />
                    <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
                    <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" SortExpression="ServiceID" />
                    <asp:BoundField DataField="MechanicID" HeaderText="MechanicID" SortExpression="MechanicID" />
                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                    <asp:BoundField DataField="ExpectFinishDate" HeaderText="ExpectFinishDate" SortExpression="ExpectFinishDate" />
                    <asp:BoundField DataField="FinishDate" HeaderText="FinishDate" SortExpression="FinishDate" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
                    <asp:BoundField DataField="UnitAmount" HeaderText="UnitAmount" SortExpression="UnitAmount" />
                    <asp:CommandField ButtonType="Button"  ControlStyle-CssClass="btn btn-light" ShowSelectButton="True" SelectText="Details">
        <ControlStyle CssClass="btn btn-primary"></ControlStyle>
                    </asp:CommandField>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Transaction] WHERE ([TransactionID] = @TransactionID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Transaction] WHERE [TransactionID] = @original_TransactionID AND [CarID] = @original_CarID AND [ServiceID] = @original_ServiceID AND [MechanicID] = @original_MechanicID AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([ExpectFinishDate] = @original_ExpectFinishDate) OR ([ExpectFinishDate] IS NULL AND @original_ExpectFinishDate IS NULL)) AND (([FinishDate] = @original_FinishDate) OR ([FinishDate] IS NULL AND @original_FinishDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([UnitAmount] = @original_UnitAmount) OR ([UnitAmount] IS NULL AND @original_UnitAmount IS NULL))" InsertCommand="INSERT INTO [Transaction] ([TransactionID], [CarID], [ServiceID], [MechanicID], [StartDate], [ExpectFinishDate], [FinishDate], [Status], [TotalCost], [UnitAmount]) VALUES (@TransactionID, @CarID, @ServiceID, @MechanicID, @StartDate, @ExpectFinishDate, @FinishDate, @Status, @TotalCost, @UnitAmount)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Transaction] SET [CarID] = @CarID, [ServiceID] = @ServiceID, [MechanicID] = @MechanicID, [StartDate] = @StartDate, [ExpectFinishDate] = @ExpectFinishDate, [FinishDate] = @FinishDate, [Status] = @Status, [TotalCost] = @TotalCost, [UnitAmount] = @UnitAmount WHERE [TransactionID] = @original_TransactionID AND [CarID] = @original_CarID AND [ServiceID] = @original_ServiceID AND [MechanicID] = @original_MechanicID AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([ExpectFinishDate] = @original_ExpectFinishDate) OR ([ExpectFinishDate] IS NULL AND @original_ExpectFinishDate IS NULL)) AND (([FinishDate] = @original_FinishDate) OR ([FinishDate] IS NULL AND @original_FinishDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([UnitAmount] = @original_UnitAmount) OR ([UnitAmount] IS NULL AND @original_UnitAmount IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_TransactionID" Type="Int32" />
                    <asp:Parameter Name="original_CarID" Type="Int32" />
                    <asp:Parameter Name="original_ServiceID" Type="Int32" />
                    <asp:Parameter Name="original_MechanicID" Type="Int32" />
                    <asp:Parameter Name="original_StartDate" Type="String" />
                    <asp:Parameter Name="original_ExpectFinishDate" Type="String" />
                    <asp:Parameter Name="original_FinishDate" Type="String" />
                    <asp:Parameter Name="original_Status" Type="Int32" />
                    <asp:Parameter Name="original_TotalCost" Type="Double" />
                    <asp:Parameter Name="original_UnitAmount" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TransactionID" Type="Int32" />
                    <asp:Parameter Name="CarID" Type="Int32" />
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                    <asp:Parameter Name="MechanicID" Type="Int32" />
                    <asp:Parameter Name="StartDate" Type="String" />
                    <asp:Parameter Name="ExpectFinishDate" Type="String" />
                    <asp:Parameter Name="FinishDate" Type="String" />
                    <asp:Parameter Name="Status" Type="Int32" />
                    <asp:Parameter Name="TotalCost" Type="Double" />
                    <asp:Parameter Name="UnitAmount" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="TransactionID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CarID" Type="Int32" />
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                    <asp:Parameter Name="MechanicID" Type="Int32" />
                    <asp:Parameter Name="StartDate" Type="String" />
                    <asp:Parameter Name="ExpectFinishDate" Type="String" />
                    <asp:Parameter Name="FinishDate" Type="String" />
                    <asp:Parameter Name="Status" Type="Int32" />
                    <asp:Parameter Name="TotalCost" Type="Double" />
                    <asp:Parameter Name="UnitAmount" Type="Int32" />
                    <asp:Parameter Name="original_TransactionID" Type="Int32" />
                    <asp:Parameter Name="original_CarID" Type="Int32" />
                    <asp:Parameter Name="original_ServiceID" Type="Int32" />
                    <asp:Parameter Name="original_MechanicID" Type="Int32" />
                    <asp:Parameter Name="original_StartDate" Type="String" />
                    <asp:Parameter Name="original_ExpectFinishDate" Type="String" />
                    <asp:Parameter Name="original_FinishDate" Type="String" />
                    <asp:Parameter Name="original_Status" Type="Int32" />
                    <asp:Parameter Name="original_TotalCost" Type="Double" />
                    <asp:Parameter Name="original_UnitAmount" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="571px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="TransactionID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnItemDeleted="DetailsView1_ItemDeleted" OnItemUpdated="DetailsView1_ItemUpdated">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="TransactionID" HeaderText="TransactionID" ReadOnly="True" SortExpression="TransactionID" />
                    <asp:BoundField DataField="CarID" HeaderText="CarID" SortExpression="CarID" />
                    <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" SortExpression="ServiceID" />
                    <asp:BoundField DataField="MechanicID" HeaderText="MechanicID" SortExpression="MechanicID" />
                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                    <asp:BoundField DataField="ExpectFinishDate" HeaderText="ExpectFinishDate" SortExpression="ExpectFinishDate" />
                    <asp:BoundField DataField="FinishDate" HeaderText="FinishDate" SortExpression="FinishDate" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
                    <asp:BoundField DataField="UnitAmount" HeaderText="UnitAmount" SortExpression="UnitAmount" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-info" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
                <asp:Label ID="Error_Label" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

