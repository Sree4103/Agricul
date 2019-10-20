<%@ Page Title="Smart Agriculture" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
        <div class="container d-flex pull-left" >
            <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="./images/image1.jfif" alt="Los Angeles" width="1024">
                        <div class="carousel-caption d-none">
                            <h5>...</h5>
                            <p>...</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="./images/image2.jfif" alt="Chicago" width="1024">
                        <div class="carousel-caption d-none">
                            <h5>...</h5>
                            <p>...</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="./images/image3.jfif" alt="New york" width="1024">
                        <div class="carousel-caption d-none">
                            <h5>...</h5>
                            <p>...</p>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
                </asp:TableCell>
                <asp:TableCell>
                    <div class="container custom-control-inline">
                        <div class="row">
                            <div class="mx-auto">
                                <div class="card card-signin my-5 align-self-sm-auto">
                                    <div class="card-body">
                                        <div class="card-signin">
                                            <img src="./images/user-login.png" class="rounded mx-auto d-block rounded-circle" alt="Avatar">
                                        </div>
                                        <h5 class="card-title text-center">Sign In</h5>
                                        <div class="form-label-group">
                                            <asp:TextBox ID="TextBox1" placeholder="Email address" class="form-control" runat="server"></asp:TextBox>
                                            <asp:Label runat="server">Email Address</asp:Label>
                                        </div>
                                        <div class="form-label-group">
                                            <asp:TextBox ID="TextBox2" TextMode="Password" placeholder="Password" class="form-control" runat="server"></asp:TextBox>
                                            <asp:Label runat="server">Password</asp:Label>
                                        </div>
                                        <div class="custom-control custom-checkbox mb-3">
                                            <asp:CheckBox runat="server" class="custom-control-input" ID="customCheck1" />
                                            <asp:Label runat="server" class="custom-control-label" for="customCheck1">Remember password</asp:Label>
                                        </div>

                                        <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block text-uppercase" runat="server" OnClick="Button1_Click" Text="Sign In" Height="37px" />


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

       <script src='https://wchat.freshchat.com/js/widget.js'></script>
   <script>
       function initFreshChat() {
    window.fcWidget.init({
        token: "e5868f05-3ac4-407d-82fb-9254083e02fc",
        host: "https://wchat.freshchat.com",
        externalId: "joey@gmail.com",     // user’s id unique to your system
        firstName: "Joe",              // user’s first name
        lastName: "Deny" 
    });
}
function initialize(i, t) {
    var e; i.getElementById(t) ? initFreshChat() : ((e = i.createElement("script")).id = t, e.async = !0, e.src = "https://wchat.freshchat.com/js/widget.js", e.onload = initFreshChat, i.head.appendChild(e))
} function initiateCall() { initialize(document, "freshchat-js-sdk") } window.addEventListener ? window.addEventListener("load", initiateCall, !1) : window.attachEvent("load", initiateCall, !1);
   </script>

</asp:Content>
