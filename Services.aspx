<%@ Page Title="Services" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .max-width-center {
            max-width: 60%;
            margin: 0 auto;
        }
        .pad-top {
            padding-top: 20px;
        }
        .auto-style1 {
            font-weight: 700;
            width: 100%;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!--Some web services-->
        <div class ="text-center container pad-top">
            <h1><b>Services</b></h1>
            <p><b>With Roadside Assistance, no matter what issue you come across driving on the road, our team of highly trained 
                       mechanics are more than willingly to come to you and provide 
                       you with the highest grade of professionalism and experience, 
                       whether your engine has died or you simply need a refuel, 
                       we are here to help and make sure you get on your way as 
                       fast and efficiently as possible</b></p>
        </div>
        <hr> 
        <br/> 
        <!--Refuel services-->
        <div class="container">
                <div class="max-width-center">
                    <h4 class="text-center font-weight-bold font"><b>Refuel</b></h4>
                    
                    <p>We’ve been there, your driving along and thinking “just one more mile, one more and i'll be there.” 
                        But unfortunately, that doesn’t always happen and your stuck on the road with an empty tank. 
                        With Roadside Assistance just tell us the make and model of your vehicle and 
                        we will come to you with half or a full tank of gas to send you on your way.
                    </p>
                    <p class="auto-style1">Rate: $15 + 120¢/ltr <a href="AuthenticatedPages/Booking.aspx" class="btn btn-primary"  style="float:right">Book Now</a></p>                   
                </div>

                <hr class="max-width-center">
                <br />
                <!--Diagnostic services-->
                <div class="max-width-center" >
                    <h4 class="text-center font-weight-bold font"><b>Diagnostic</b></h4>
                    <p>Sometimes as drivers we don’t know what the problem is, just that there is a problem and our cars not 
                        working. Which is why we have implemented an individual diagnostic service to allow drivers to call in 
                        and find out what that sound or warning light means, and how it effects your vehicle.
                    </p>
                    <p class="font-weight-bold">Rate: $25/hr <a href="AuthenticatedPages/Booking.aspx" class="btn btn-primary" style="float:right">Book Now</a></p>
                </div>

                <hr class="max-width-center">
                <br />
                <!--Tire Change/Maintenance services-->
                <div class="max-width-center" >
                    <h4 class="text-center font-weight-bold font"><b>Tire Change/Maintenance</b></h4>
                    <p>Changing a Tire or repairing a popped wheel can be a simple and quick job that not everyone knows how 
                        to do. By calling Roadside Assistance we will come to you fully equipped to change or repair a tire and 
                        send you on your way as quick as possible.
                    </p>
                    <p class="font-weight-bold">Rate: $45 <a href="AuthenticatedPages/Booking.aspx" class="btn btn-primary" style="float:right">Book Now</a></p>
                </div>

                <hr class="max-width-center">
                <br />
             <!--Locked out services-->
                <div class="max-width-center" >
                    <h4 class="text-center font-weight-bold font"><b>Locked out</b></h4>
                    <p>When you lose track of your keys or leave them in the vehicle a technician will come by and safely open 
                        your doors and provide access to the vehicle.
                    </p>
                    <p class="font-weight-bold">Rate: $35 <a href="AuthenticatedPages/Booking.aspx" class="btn btn-primary" style="float:right">Book Now</a></p>
                </div>

                <hr class="max-width-center">
                <br />

                <!--Tow to Garage/House services-->
                <div class="max-width-center" >
                    <h4 class="text-center font-weight-bold font"><b>Tow to Garage/House</b></h4>
                    <p>When all else fails and your vehicle is immovable or some more serious equipment is required. We are
                    more than happy to provide you and your vehicle with a lift to the closest garage or destination of your choice.
                    </p>
                    <p class="font-weight-bold">Rate: $10 + $2.00/km <a href="AuthenticatedPages/Booking.aspx" class="btn btn-primary" style="float:right">Book Now</a></p>
                </div>
    
                <hr class="max-width-center">            
                <br />
                <!--External link to Facebook Fanpage-->
                <div class="max-width-center" >
                    <h4 class="text-center font-weight-bold font"><b>Events and Rewards </b></h4>
                    <p> Follow us on <a href="https://www.facebook.com/Roadside-Assitance-2049248625399156/"> Facebook </a>
                        to see our events and have a chance to win special rewards                    
                    </p>
                
                </div>
        </div>
</asp:Content>

