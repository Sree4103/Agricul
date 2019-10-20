<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Predictions.aspx.cs" Inherits="WebApplication1.Predictions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <script type="text/javascript">
            $(document).ready(function () {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var lat = position.coords.latitude;
                    var lng = position.coords.longitude;
                    window.document.getElementById('<%=latitude.ClientID %>').value = lat;
                    window.document.getElementById('<%=longitude.ClientID %>').value = lng;
                });
            });
        </script>
        <div class="navbar navbar-nav">
            <div class="container">
                <span class="glyphicon glyphicon-home custom-control-inline">
                    <a href="login-landing.aspx" class="custom-control-inline align-items-stretch">
                        <h3 class="justify-content-sm-around">Back to DashBoard</h3>
                    </a>

                </span>
            </div>
        </div>
        <div class="form-label-group">
            <asp:TextBox runat="server" ID="latitude" name="latitude" placeholder="Latitude" class="form-control" />
            <asp:Label runat="server">Latitude</asp:Label>
        </div>
        <div class="form-label-group">
            <asp:TextBox runat="server" ID="longitude" name="longitude" placeholder="Longitude" class="form-control" />
            <asp:Label runat="server">Longitude</asp:Label>
        </div>
        <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block text-uppercase" runat="server" OnClick="getPredictionsAsync" Text="Get Predictions" Height="37px" />
    </div>
</asp:Content>
