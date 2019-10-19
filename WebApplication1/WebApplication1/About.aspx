<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>AgriDescription page.</h3>
    <p>Use this area to provide additional information.</p>
       <body>
<!-- partial:index.partial.html -->
Your Webpage
<!-- partial -->
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

</body>
</asp:Content>
