<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
       .container {
           min-height: 600px;
           padding-bottom: 20px;
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
          
                      <input type="file" class="form-control">
                    </div>
                  </div>
                <div class="col-md-9 personal-info"> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Name:</td>
                        <td> <asp:TextBox runat="server" ID="Name"  CssClass="form-control"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="This Field is required" ControlToValidate="Name"></asp:RequiredFieldValidator>
                        </td>
                      </tr>                      
                      <tr>
                        <td>Date of Birth</td>
                        <td> <asp:TextBox TextMode="Date" runat="server" ID="DOB" CssClass="form-control" ></asp:TextBox>

                        </td>
                      </tr>                   
                      <tr>
                        <td>Gender</td>
                        <td>
                            <asp:DropDownList runat="server" CssClass="form-control" Width="25%" ID="Gender">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td>Home Address</td>
                        <td> <asp:TextBox runat="server" ID="Home_Address" CssClass="form-control"></asp:TextBox> </td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td> <asp:TextBox TextMode="Email" runat="server" ID="Email" CssClass="form-control"></asp:TextBox> </td>
                      </tr>
                      <tr>
                        <td>Phone Number</td>
                        <td> <asp:TextBox TextMode="Phone" runat="server" ID="Phone_Number" CssClass="form-control"></asp:TextBox> </td>
                      </tr> 
                      <tr>
                        <td>Insurance Number</td>
                        <td> <asp:TextBox TextMode="Number" runat="server" ID="Insurance_Number" CssClass="form-control"></asp:TextBox> </td>
                      </tr> 
                       <tr>
                        <td>License Number </td>
                        <td> <asp:TextBox runat="server" ID="License_Number" CssClass="form-control"></asp:TextBox> </td>
                      </tr> 
                    </tbody>
                  </table>               
                    <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnEdit_Click"/>
                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-primary" Text="Cancel" OnClick="btnCancel_Click"/>
                </div>
              </div>
            </div>  

</asp:Content>

