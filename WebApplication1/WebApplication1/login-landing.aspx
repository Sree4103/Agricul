<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login-landing.aspx.cs" Inherits="WebApplication1.login_landing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <script>
            $(document).ready(function () {
                window.document.getElementById('UserName').innerText='<%=Session["user"]%>'
            });
        </script>
        <div class="navbar">
            <div class="nav-item align-content-lg-end">
               <h3 class="align-content-end "> <span class="glyphicon glyphicon-user custom-control-inline"> Welcome <label id="UserName"></label></span></h3>
            </div>
        </div>
    <div>
        <div class="jumbotron card-deck">
            <div class="card">
                <div class="custom-control-inline card-body">
                    <img src="./images/analysis.png" alt="analysis" class="card-image" />
                    <div class="container-fluid">
                        <table>
                            <tr>
                                <td>
                                    <div class="row alert d-block">
                                        <p class="card-text">Do you know analysis of soil can reduce the fertilizer consumption by 70%..?</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="row alert d-block">
                                        <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block text-capitalize" runat="server" Text="Get Soil Health Card" OnClick="getSoilHealthCard" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div>
                </div>
            </div>

            <div class="card">
                <div class="custom-control-inline card-body">
                    <img src="./images/profile.png" alt="analysis" class="card-image" />
                    <div class="container-fluid">
                        <table>
                            <tr>
                                <td>
                                    <div class="row alert d-block">
                                        <p class="card-text">Update your profile and when needed.</p>
                                        <hr />
                                        <p></p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="row alert d-block">
                                        <asp:Button ID="Button2" class="btn btn-lg btn-primary btn-block text-capitalize" runat="server" Text="Check Profile"  OnClick="getProfile"/>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div>
                </div>
            </div>
        </div>
        <div class="jumbotron card-deck">
            <div class="card">
                <div class="custom-control-inline card-body">
                    <img src="./images/predict.jpg" alt="analysis" width="280" height="400" class="card-image" />
                    <div class="container-fluid">
                        <table>
                            <tr>
                                <td>
                                    <div class="row alert d-block">
                                        <p class="card-text">Want to know the best crop and yeild better?</p>
                                        <hr />
                                        <p>Predict Now...</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="row alert d-block">
                                        <asp:Button ID="Button3" class="btn btn-lg btn-primary btn-block text-capitalize" runat="server" Text="Predict"  OnClick="predict" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div>
                </div>
            </div>
            <div class="card">
                <div class="custom-control-inline card-body">
                    <img src="./images/expert.jfif" alt="analysis" class="card-image" />
                    <div class="container-fluid">
                        <table>
                            <tr>
                                <td>
                                    <div class="row alert d-block">
                                        <p class="card-text">Expert guidance can help get Profits...</p>
                                        <hr />
                                        <p>Get Suggestions Now</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="row alert d-block">
                                        <asp:Button ID="Button4" class="btn btn-lg btn-primary btn-block text-capitalize" runat="server" Text="Get Suggestions" OnClick="getSuggestions"/>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div>
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>
