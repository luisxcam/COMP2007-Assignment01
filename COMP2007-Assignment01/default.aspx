﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2007_Assignment01._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Game calculator-->
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 id="calculator-title" class="panel-title text-center">Game Calculator</h1>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-6 col-lg-6">
                    <div class="input-group">
                        <div>
                            <h3>Game 01</h3>
                        </div>
                        <div>
                            <asp:Label ID="Result01Label" runat="server" Text="Results:"></asp:Label>
                            <asp:RadioButtonList ID="WinLose01RadioButtonList" runat="server">
                                <asp:ListItem Text="Win"></asp:ListItem>
                                <asp:ListItem Text="Lose"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div>
                            <asp:Label ID="PointsScored01Label" runat="server" Text="Points Scored:"></asp:Label>
                            <asp:TextBox ID="PointsScored01TextBox" runat="server" placeholder="Score of your team" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="PointsAllowed01Label" runat="server" Text="Points Allowed:"></asp:Label>
                            <asp:TextBox ID="PointsAllowed01TextBox" runat="server" placeholder="Score of the enemy team" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="Spectators01Label" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="Spectators01TextBox" runat="server" placeholder="Amount of people in the facilities" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="input-group">
                        <div>
                            <h3>Game 02</h3>
                        </div>
                        <div>
                            <asp:Label ID="Result02Label" runat="server" Text="Results:"></asp:Label>
                            <asp:RadioButtonList ID="WinLose02RadioButtonList" runat="server">
                                <asp:ListItem Text="Win"></asp:ListItem>
                                <asp:ListItem Text="Lose"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div>
                            <asp:Label ID="PointsScored02Label" runat="server" Text="Points Scored:"></asp:Label>
                            <asp:TextBox ID="PointsScored02TextBox" runat="server" placeholder="Score of your team" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="PointsAllowed02Label" runat="server" Text="Points Allowed:"></asp:Label>
                            <asp:TextBox ID="PointsAllowed02TextBox" runat="server" placeholder="Score of the enemy team" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="Spectators02Label" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="Spectators02TextBox" runat="server" placeholder="Amount of people in the facilities" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-6">
                    <div class="input-group">
                        <div>
                            <h3>Game 03</h3>
                        </div>
                        <div>
                            <asp:Label ID="Result03Label" runat="server" Text="Results:"></asp:Label>
                            <asp:RadioButtonList ID="WinLose03RadioButtonList" runat="server">
                                <asp:ListItem Text="Win"></asp:ListItem>
                                <asp:ListItem Text="Lose"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div>
                            <asp:Label ID="PointsScored03Label" runat="server" Text="Points Scored:"></asp:Label>
                            <asp:TextBox ID="PointsScored03TextBox" runat="server" placeholder="Score of your team" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="PointsAllowed03Label" runat="server" Text="Points Allowed:"></asp:Label>
                            <asp:TextBox ID="PointsAllowed03TextBox" runat="server" placeholder="Score of the enemy team" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="Spectators03Label" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="Spectators03TextBox" runat="server" placeholder="Amount of people in the facilities" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="input-group">
                        <div>
                            <h3>Game 04</h3>
                        </div>
                        <div>
                            <asp:Label ID="Result04Label" runat="server" Text="Results:"></asp:Label>
                            <asp:RadioButtonList ID="WinLose04RadioButtonList" runat="server">
                                <asp:ListItem Text="Win"></asp:ListItem>
                                <asp:ListItem Text="Lose"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div>
                            <asp:Label ID="PointsScored04Label" runat="server" Text="Points Scored:"></asp:Label>
                            <asp:TextBox ID="PointsScored04TextBox" runat="server" placeholder="Score of your team" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="PointsAllowed04Label" runat="server" Text="Points Allowed:"></asp:Label>
                            <asp:TextBox ID="PointsAllowed04TextBox" runat="server" placeholder="Score of the enemy team" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="Spectators04Label" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="Spectators04TextBox" runat="server" placeholder="Amount of people in the facilities" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <!--.row-->
        </div>
        <!--.panel-body-->
    </div>
    <!--.panel panel-primary-->
    <div>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="btn btn-primary" />
    </div>
    
</asp:Content>
