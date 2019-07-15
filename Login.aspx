<%@ Page Title="Login" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .max-width-center {
            max-width: 30%;
            margin: 0 auto;
        }
        .pad-top {
            padding-top: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="text-center pad-top">
        <h1>Sign In</h1>
        <!-- Alert Error --> 
        <div id="AlertFlash" class="alert alert-danger" runat="server" visible="false">
                <asp:label runat="server" ID="StatusLabel"></asp:label>

        </div>
        <div class="text-center">
            <!--Create new user-->
            <a href="SignUp.aspx">Don't have an account? Register</a><br>
        </div>
        <hr class="max-width-center" />
        <br />
    </div>
    <div class="container max-width-center">
        <!--Username-->
        <div class="form-group">
            <label for="txtUserName" class="control-label"><b>Username:</b></label>
            <div>
                <asp:TextBox Width="400px" runat="server" CssClass="form-control" ID="txtUserName"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                <asp:CustomValidator ForeColor="Red" runat="server" ErrorMessage="Username must be all letters and numbers and begin with a letter" Display="Dynamic" ControlToValidate="txtUserName" OnServerValidate="username_Validate"></asp:CustomValidator>
            </div>
        </div>
        <!--Password-->
        <div class="form-group">
            <label for="txtPassword" class="control-label"><b>Password:</b></label>
            <div>
                <asp:TextBox TextMode="Password" Width="400px" runat="server" CssClass="form-control" ID="txtPassword"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" ErrorMessage="This field is required" Display="Dynamic" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                <asp:CustomValidator ForeColor="Red" runat="server" ErrorMessage="Password must be 8 to 16 characters long, start with a letter and contain at least one ! Or * and digit in it" Display="Dynamic" ControlToValidate="txtPassword" OnServerValidate="password_Validate"></asp:CustomValidator>            
            </div>
        </div>
        <!--Submit-->
        <br>
        <asp:Button runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" ID="btnLogin"></asp:Button>
        
    </div>
</asp:Content>



