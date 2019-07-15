<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
       .container {
           min-height: 600px;
       }
        .max-width-center {
            max-width: 35%;
            margin: 0 auto;
        }
        .pad-top {
            padding-top: 20px;
        }
        img {
            height: 200px;
        }
   </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="max-width-center pad-top">
            <h1 class="text-center"> Profile</h1>
        </div>
              <div class="row">     
                  <div class="col-md-3">
                    <div class="text-center">
                      <img src="../Images/User_Avatar.png" class="avatar img-circle" alt="avatar">
                    </div>
                  </div>
                <div class="col-md-9 personal-info"> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Name:</td>
                        <td> <asp:Label ID="lblName" runat="server"></asp:Label></td>
                      </tr>                      
                      <tr>
                        <td>Date of Birth</td>
                        <td> <asp:Label ID="lblDoB" runat="server"></asp:Label> </td>
                      </tr>                   
                      <tr>
                        <td>Gender</td>
                        <td> <asp:Label ID="lblGender" runat="server"></asp:Label> </td>
                      </tr>
                      <tr>
                        <td>Home Address</td>
                        <td> <asp:Label ID="lblAddress" runat="server"></asp:Label> </td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td> <asp:Label ID="lblEmail" runat="server"></asp:Label> </td>
                      </tr>
                      <tr>
                        <td>Phone Number</td>
                        <td> <asp:Label ID="lblPhone" runat="server"></asp:Label> </td>
                      </tr> 
                      <tr>
                        <td>Insuarance Number</td>
                        <td> <asp:Label ID="lblInsurance" runat="server"></asp:Label> </td>
                      </tr> 
                       <tr>
                        <td>License Number </td>
                        <td> <asp:Label ID="lblLicense" runat="server"></asp:Label> </td>
                      </tr> 
                    </tbody>
                  </table>               
                    <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" Text="Edit" OnClick="btnEdit_Click"/>
                    <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-primary" OnClick="btnDelete_Click" OnClientClick="javascript:alert('Account deleted!!')" Text="Delete"/>
                </div>
              </div>
            </div>  

</asp:Content>

