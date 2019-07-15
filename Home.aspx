<%@ Page Title="Home" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .min-height-content {
            min-height: 300px;
        }
        .center-block {
            display: block;
            margin: 0 auto;
            width: 100%;
        }

        .center {
            margin: 0 auto;
        }
        .row .col-sm {
            max-width: 50%;

        }

        .col-sm img {
            width: 80%;
            border-radius: 50%;
        }

        .section {
            padding-top: 2em;
            padding-bottom: 2em;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div class="col banner"> 
                <!--Web Introduction-->
            <div class="inner"> 
                <h1> Road Assistance: </h1> 
                <br /> 
                <p><i class="fa fa-lg fa-check"></i> Your Companion on all roads  </p>
                <p><i class="fa fa-lg fa-check"></i> Driving without any apprehension and worriment  </p>
                <p><i class="fa fa-lg fa-check"></i> Expert in repairing and maintaining car </p>

                <a href="#" class="btn btn-info">Get Started</a>
            </div>    
        </div>
  </div>
    <!--Some web services-->
   <div class="container w-75 min-height-content section">
       <div class="row text-center">
            <h3 class="center-block"> SERVICES </h3>
            <p class="center-block"> <a href="Services.aspx"> Learn more</a> </p>
            <div class="w-75 center">  <hr/> </div>
       </div>
      <div class="row">
            <div class="col-sm text-center">  
                <p class="font-weight-bold"> Refuel</p>
                <img class="center-block" alt="refuel_image" src="Images/refuel.png" /> 
            </div>
            <div class="col-sm text-center">
                <p class="font-weight-bold"> Diagnostic</p>
                <img class="center-block" alt="diagnostics_image" src="Images/diagnostics.jpg" />
            </div>
            <div class="col-sm text-center">
                <p class="font-weight-bold"> Maintenance</p>
                <img class="center-block" alt="maintenance_image" src="Images/maintenance.jpg" />
            </div>
        </div> 
       <div class="row">
            <div class="col-sm text-center">
                <p class="font-weight-bold"> Lock Out</p>
                <img class="center-block" alt="lockout_image" src="Images/lockout.jpg" />
            </div>
            <div class="col-sm text-center">
                <p class="font-weight-bold"> Tow to Garage</p>
                <img class="center-block" alt="toToGarage_image" src="Images/tow_to_garage.jpg" />
            </div>
            <div class="col-sm text-center">
                <p class="font-weight-bold"> Consult </p>
                <img class="center-block" alt="toToGarage_image" src="Images/customer_service.jpg" />
            </div>

      </div>
    </div>
</asp:Content>

