<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .max-width-center {
            max-width: 60%;
            margin: 0 auto;
        }
        .max-width-center-button {
            max-width: 30%;
            margin: 0 auto;
        }
        .pad-top {
            padding-top: 20px;
        }
        .label-width {
            width: 10em;
        }
        .txt-inline {
            display: inline-block;
        }
        .container {
            min-height: 500px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="text-center pad-top">
        <h1>Booking Service</h1>
        <p> Fill out this form to add your booking </p>
        <hr class="max-width-center" />
        <br />
    </div>
    <!-- Form for booking service -->
    <div class="container"> 
        <div class="max-width-center"> 
            <!-- Service Name --> 
            <div class="form-group">
                <label for="btnServiceName" class="control-label label-width"><b>Service Name:</b></label>         
                <asp:Label Width="400px" runat="server" CssClass="" ID="btnServiceName" Text="lblServiceName" ></asp:Label>
            </div>
            <!-- Car Model -->
            <div class="form-group">
                <label for="CarModel" class="control-label label-width"><b>Car Model:</b></label>         
                <asp:TextBox Width="400px" runat="server" CssClass="form-control txt-inline" ID="CarModel" placeholder="Ex: Chevy Sonic"></asp:TextBox>
            </div>
            <!-- Insurance Number -->            
            <div class="form-group">
                <label for="txtInsuranceNumber" class="control-label label-width"><b>Insurance Number:</b></label>         
                <asp:TextBox Width="400px" runat="server" CssClass="form-control txt-inline" ID="txtInsuranceNumber" placeholder="Ex: ########"></asp:TextBox>
            </div>
            <!-- License Number -->            
            <div class="form-group">
                <label for="txtLicenseNumber" class="control-label label-width"><b>License Number:</b></label>         
                <asp:TextBox Width="400px" runat="server" CssClass="form-control txt-inline" ID="txtLicenseNumber" placeholder="Ex: ########"></asp:TextBox>
            </div>
            <!-- Start Date -->            
            <div class="form-group">
                <label for="txtStartDate" class="control-label label-width"><b>Start Date:</b></label>         
                <asp:TextBox Width="400px" runat="server" CssClass="form-control txt-inline" ID="txtStartDate" TextMode="Date"></asp:TextBox>
            </div>
            <!-- Finish Date -->            
            <div class="form-group">
                <label for="txtFinishDate" class="control-label label-width"><b>Finish Date:</b></label>         
                <asp:TextBox Width="400px" runat="server" CssClass="form-control txt-inline" ID="txtFinishDate" TextMode="Date"></asp:TextBox>
            </div>
            <!-- Description -->
            <div class="form-group">
                <label for="txtLicenseNumber" class="control-label label-width"><b>Description</b></label>         
                <asp:TextBox Width="400px" runat="server" CssClass="form-control txt-inline" ID="TextBox1" TextMode="MultiLine" placeholder="Ex: Describe your problem in detail here"></asp:TextBox>
            </div>
            <!-- Submit button -->
            <div class="text-center">
               
                <asp:Button runat="server" Text="Booking" CssClass="btn btn-primary txt-inline" ID="btnBooking" OnClick="btnBooking_Click"></asp:Button>
                <asp:Button runat="server" Text="Cancel" CssClass="btn btn-default txt-inline" ID="btnCancel" CausesValidation="false"></asp:Button>
            </div>           
        </div>
            
    </div>


</asp:Content>

