<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Suggestions.aspx.cs" Inherits="WebApplication1.Suggestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="navbar navbar-nav">
            <div class="container">
                <span class="glyphicon glyphicon-home custom-control-inline">
                    <a href="login-landing.aspx" class="custom-control-inline align-items-stretch">
                        <h3 class="justify-content-sm-around">Back to DashBoard</h3>
                    </a>

                </span>
            </div>
        </div>

        <div class="container card custom-control-inline">
            <div class="card-body">
                <div class="card-title"><h3>Suggestions</h3></div>
                
            </div>
        </div>
             <asp:Button ID="Predict" class="btn btn-lg btn-primary btn-block text-uppercase" runat="server" OnClick="getPrediction" Text="Get Crop Predictions" Height="37px" />
    </div>
</asp:Content>
