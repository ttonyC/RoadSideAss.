<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="CreateAccountSuccess.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .middle {
            padding: 100px 30%;

        }
        img {
            height: 180px;
        }
        .pad-top {
            padding-top: 50px;
        }
         .auto-style1 {
             width: 365px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Create Account Success -->
    <div class="container">
            <div class="middle">
                <h1 class="auto-style1"> Welcome, 
                    <asp:Label ID="lblUserName" runat="server"></asp:Label>
                    </h1>
                <div class="row">
                    <div class="col-sm">
                        <img src="../Images/User_Avatar.png" />
                    </div>
                    <div class="col-sm pad-top"><p><b>Your account is created</b></p>
                        <p> <b> <a href="../Home.aspx"> <i class="fa fa-backward"></i>  Back to Home Page</a></b></p>
                    </div>
                </div>
            </div>            
    </div>
</asp:Content>

