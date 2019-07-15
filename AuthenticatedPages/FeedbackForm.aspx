<%@ Page Title="Feedback Form Page" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <style>
        .container1{
            padding-right: 20%;
                padding-left: 20%;
                margin-right: auto;
                margin-left: auto;
                padding-top: 40px;
        }
        .row1{
                padding-left: 20%;
        }
        #contact {
                padding-bottom: 40px;
                padding-top: 20px;
        }        
    </style>
    <link href="../Scripts/5star/5star.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Feedback form-->
   <section id="contact" class="content-section text-center">
        <div class="contact-section">
            <div class="container1">
              <h1>Feedback Form</h1>
              <p>Feel free to show us by filing the feeback form or visiting our social network sites like Fackebook,Whatsapp,Twitter.</p>
              <div class="row1">
                <div class="col-md-8 col-md-offset-2 form-horizontal">

                    <!--Enter full name -->
                    <div class="form-group">
						<label for="full_name" class="control-label"><b>Please enter your full name</b></label>
						<asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Full name is required" ForeColor="Red"></asp:RequiredFieldValidator>					
                    </div>

                    <!--Enter email -->
                    <div class="form-group">
						<label for="email" class="control-label"><b>Please enter your e-mail</b></label>
						<asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
					</div>

                    <!--Satisfaction selection -->
					<div class="form-group">
						<label for="choices" class="control-label"><b>Are you satisfied with the service today?</b></label>
                        <div>
						    <asp:RadioButton ID="rdYes" runat="server" GroupName="Choice" Text="Yes, I'm satisfied" />
                                &nbsp;<asp:RadioButton ID="rdNo" runat="server" GroupName="Choice" Text="No, I'm not satisfied" />
						    <br />
						<asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="You have to choose one option" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ></asp:CustomValidator>
					    </div>
                    </div>

                    <!--Rating-->
                    <div class="form-group ">
						<label for="rating" class="control-label"><b>Rating</b></label><br />              
                        <asp:RadioButtonList CssClass="rate-area" ID="rdRating" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                        </asp:RadioButtonList>                        
                    </div>
                
                    <!--Add comments -->
                    <div class="form-group ">
						<label for="choices" class="control-label"><b>Add comments about the services that you received? (optional)</b></label>
						<asp:TextBox ID="txtComment" CssClass="form-control" runat="server" TextMode="MultiLine" Height="100px" ></asp:TextBox>
                    </div>

                    <!--Send to Feedback Confirm page -->
                    <asp:Button ID="btnSend" CssClass="btn btn-primary" runat="server" Text="Send Message" OnClick="btnSend_Click" />
                  </div>
                                  
              </div>
            </div>
        </div>
</section>
</asp:Content>

