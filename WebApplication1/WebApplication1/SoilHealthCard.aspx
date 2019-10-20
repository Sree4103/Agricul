<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SoilHealthCard.aspx.cs" Inherits="WebApplication1.SoilHealthCard" %>

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
                <div class="card-title"><h3>Soil Health Card Details</h3></div>
                <asp:Table runat="server" ID="landDetails" class="table table-sm table-responsive-sm table-striped">
                </asp:Table>
            </div>
        </div>
    </div>
</asp:Content>
