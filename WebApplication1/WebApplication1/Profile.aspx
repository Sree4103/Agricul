<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication1.Profile" %>

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
                <div class="card-title"><h3>Profile Details</h3></div>
                <asp:Table runat="server" ID="profileTable" class=" table -sm table table-responsive-sm table-striped">
                </asp:Table>
            </div>
        </div>

    </div>
</asp:Content>
