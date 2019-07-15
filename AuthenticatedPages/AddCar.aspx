<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="AddCar.aspx.cs" Inherits="AddCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style>
        .container {
            padding-bottom: 50px;
            margin: 0 auto;
        }
        .max-width-center {
            max-width: 35%;
            margin: 0 auto;
        }
        .pad-top {
            padding-top: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container max-width-center pad-top">
        <h1 class="text-center"> Add Your Vehicle</h1>
        <!--Car Name-->
        <div class="form-group">
            <label for="txtCarName" class="control-label"><b>Car's Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtCarName"></asp:TextBox>
            </div>
        </div>
        <!--Make-->
        <div class="form-group">
            <label for="txtMake" class="control-label"><b>Make: </b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtMake" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtMake" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--Model-->
        <div class="form-group">
            <label for="txtModel" class="control-label"><b>Model:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtModel"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtModel" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
         <!-- Year --> 
         <div class="form-group">
            <label for="txtYear" class="control-label"><b>Year:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtYear"></asp:TextBox>
            </div>
        </div>
         <!-- Mileage --> 
         <div class="form-group">
            <label for="txtMiles" class="control-label"><b>Mileage:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtMiles"></asp:TextBox>
            </div>
         <!-- Engine Size --> 
         <div class="form-group">
            <label for="txtEsize" class="control-label"><b>Engine Size:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtEsize"></asp:TextBox>
            </div>
        </div>
        <!--Button Area-->
        <asp:Button runat="server" Text="Add Car" CssClass="btn btn-primary" OnClick="btnCreate_Click" ID="btnCreate"></asp:Button>
        <asp:Button runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="Cancel" CausesValidation="false"></asp:Button>

    </div>
</asp:Content>

