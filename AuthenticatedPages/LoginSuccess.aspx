<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="LoginSuccess.aspx.cs" Inherits="_Default" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--Login success-->
    <div class="container">
            <div class="middle">
                <h1> Welcome, 
                    <asp:Label ID="lblUsername" runat="server"></asp:Label>
                </h1>
                <div class="row">
                    <div class="col-sm">
                        <img src="../Images/User_Avatar.png" />
                    </div>
                    <div class="col-sm pad-top">
                        <p> <b> Successfully logged in!</b></p>
                        <p> <b> <a href="../Home.aspx"> <i class="fa fa-backward"></i>  Back to Home Page</a></b></p>
                    </div>
                </div>
            </div>            
    </div>

</asp:Content>

