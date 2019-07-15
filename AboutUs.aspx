<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .max-width-center {
            max-width: 60%;
            margin: 0 auto;
        }
        .pad-top {
            padding-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="text-center pad-top">
        <h1>About Us</h1>
        <hr class="max-width-center" />
        <br />
    </div>
    <!--Introduction about members-->
    <div class="container">
        <div class="max-width-center">      
            <ul class="list-unstyled">
                <li class="text-center"> 
                    <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_1">Anthony Caldwell</button>
                    <div id="demo_1" class="collapse">
                        <b>I am a 21 year old student in my second year of a 3 year program studying computer programming and maintenance. I completed the 'Services' page and the 'About Us' page. I enjoy golfing and video games. </b>                 
                    </div>
                </li>
                <br />
                <br />
                <li class="text-center">
                    <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_2">Hao Bui</button>
                    <div id="demo_2" class="collapse">
                    <b>I am in the second year of 3 year Computer Programming program. I completed
                    the feedback form and feebback success page. In my free time, I like programming, listening to music and football.</b>
                    </div>
                </li>
                <br />
                <br />
                <li class="text-center">
                    <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_3">Quan Trung</button>
                    <div id="demo_3" class="collapse">
                    <b>Im student at George Brown College. I make the login and login success confirm pages. I love playing video games and shrimp spring rolls.</b>
                    </div>
                </li>
                <br />
                <br />
                <li class="text-center">
                    <button type="button" class="btn btn-info btn-lg" data-toggle="collapse" data-target="#demo_4">Tam Dang</button>
                    <div id="demo_4" class="collapse">
                    <b>I’m a second year student studying Computer Programming at GBC. I made the MasterPage, HomePage. I enjoy playing badminton, soccer, volleyball and listening to music.</b>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>