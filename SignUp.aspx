<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_Default" %>

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
        <h1 class="text-center"> Sign Up</h1>
        <!-- Alert Error --> 
        <div id="AlertFlash" class="alert alert-danger" runat="server" visible="false">
                <asp:Label runat="server" ID="StatusLabel"></asp:Label>
        </div>
        <!--User Name-->
        <div class="form-group">
            <label for="txtUserName" class="control-label"><b>User Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtUserName"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <!--First Name-->
        <div class="form-group">
            <label for="txtFirstName" class="control-label"><b>First Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtFirstName"></asp:TextBox>
            </div>
        </div>
        <!--Last Name-->
        <div class="form-group">
            <label for="txtLastName" class="control-label"><b>Last Name:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtLastName"></asp:TextBox>
            </div>
        </div>
        <!-- Address -->
        <div class="form-group">
            <label for="txtAddress" class="control-label"><b> Address:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtAddress"></asp:TextBox>
            </div>
        </div>
        <!--Email-->
        <div class="form-group">
            <label for="txtEmail" class="control-label"><b>Email:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtEmail" TextMode="Email"></asp:TextBox>
            </div>
        </div>
        <!--Password-->
        <div class="form-group">
            <label for="txtPassword" class="control-label"><b>Password:</b></label>
            <div>
                <asp:TextBox TextMode="Password" Width="400px" runat="server" CssClass="form-control" ID="txtPassword"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!-- Phone -->
        <div class="form-group">
            <label for="txtPhone" class="control-label"><b>Phone:</b></label>
            <div>
                <asp:TextBox TextMode="Phone" Width="400px" runat="server" CssClass="form-control" ID="txtPhone"></asp:TextBox>
            </div>
        </div>

        <!-- Date of Birth -->
        <div class="form-group">
            <label for="txtDoB" class="control-label"><b>Date of Birth:</b></label>
            <div>
                <asp:TextBox TextMode="Date" Width="400px" runat="server" CssClass="form-control" ID="txtDoB"></asp:TextBox>
            </div>
        </div>

        <!-- Gender -->
        <div class="form-group">
			<label class="control-label"><b>Gender: </b></label>
                <div>
			        <asp:RadioButton ID="rdMale" runat="server" GroupName="Choice" Text="Male" Checked="true" />
                                &nbsp;
                    <asp:RadioButton ID="rdFemale" runat="server" GroupName="Choice" Text="Female" />
						    <br />
		        </div>
        </div>

        <!-- Insurance -->
        <div class="form-group">
            <label for="txtInsurance" class="control-label"><b>Insurance:</b></label>
            <div>
                <asp:TextBox TextMode="Number" Width="400px" runat="server" CssClass="form-control" ID="txtInsurance"></asp:TextBox>
            </div>
        </div>

        <!-- License -->
        <div class="form-group">
            <label for="txtLicense" class="control-label"><b>License:</b></label>
            <div>
                <asp:TextBox TextMode="Number" Width="400px" runat="server" CssClass="form-control" ID="txtLicense"></asp:TextBox>
            </div>
        </div>

            

        <!--Terms of Services and Email receive agreement-->
        <asp:CheckBox  runat="server" Text="I agree with the terms of service" TextAlign="Right"></asp:CheckBox><br>
        <asp:CheckBox  runat="server" Text="I agree to receive email regarding promotions and offers" TextAlign="Right"></asp:CheckBox><br>
        <!--Button Area-->
        <asp:Button runat="server" Text="Create Account" CssClass="btn btn-primary" ID="btnCreate" OnClick="btnCreate_Click"></asp:Button>
        <asp:Button runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="Cancel" CausesValidation="false"></asp:Button>

    </div>
</asp:Content>

