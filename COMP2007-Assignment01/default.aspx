<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2007_Assignment01._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--Game calculator-->
    <div id="gameCalculator" class="panel panel-primary" runat="server">

        <!--Panel Heading-->
        <div class="panel-heading">
            <h1 id="calculator-title" class="panel-title text-center">Game Calculator</h1>
        </div>

        <!--Panel Content-->
        <div class="panel-body">
            <div class="row">
                <!--GAME 01 - GAME 01 - GAME 01 - GAME 01 - GAME 01 - GAME 01 - GAME 01 - -->
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorWinLose01" runat="server" ControlToValidate="WinLose01RadioButtonList" ErrorMessage="Must select one of the choices" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="PointsScored01Label" runat="server" Text="Points Scored:"></asp:Label>
                            <asp:TextBox ID="PointsScored01TextBox" runat="server" placeholder="Score of your team" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPointsScored01" runat="server" ControlToValidate="PointsScored01TextBox" ErrorMessage="Scored Points field is empty. Please input the score" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidatorEqualScores01" runat="server" ErrorMessage="Points Scored and Points Allowed are equal. Please modify change one of the values" Display="Dynamic" ClientValidationFunction="validateScoredAllowed"></asp:CustomValidator>
                        </div>
                        <div>
                            <asp:Label ID="PointsAllowed01Label" runat="server" Text="Points Allowed:"></asp:Label>
                            <asp:TextBox ID="PointsAllowed01TextBox" runat="server" placeholder="Score of the enemy team" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPointsAllowed01" runat="server" ControlToValidate="PointsAllowed01TextBox" ErrorMessage="Allowed Points field is empty. Please input the score" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="Spectators01Label" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="Spectators01TextBox" runat="server" placeholder="Amount of people in the facilities" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectators01" runat="server" ControlToValidate="Spectators01TextBox" ErrorMessage="Spectators field is empty. Please input the amount of spectators" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                </div>
                <!--GAME 02 - GAME 02 - GAME 02 - GAME 02 - GAME 02 - GAME 02 - GAME 02 - -->
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorWinLose02" runat="server" ControlToValidate="WinLose02RadioButtonList" ErrorMessage="Must select one of the choices" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="PointsScored02Label" runat="server" Text="Points Scored:"></asp:Label>
                            <asp:TextBox ID="PointsScored02TextBox" runat="server" placeholder="Score of your team" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPointsScored02" runat="server" ControlToValidate="PointsScored02TextBox" ErrorMessage="Scored Points field is empty. Please input the score" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="PointsAllowed02Label" runat="server" Text="Points Allowed:"></asp:Label>
                            <asp:TextBox ID="PointsAllowed02TextBox" runat="server" placeholder="Score of the enemy team" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPointsAllowed02" runat="server" ControlToValidate="PointsAllowed02TextBox" ErrorMessage="Allowed Points field is empty. Please input the score" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="Spectators02Label" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="Spectators02TextBox" runat="server" placeholder="Amount of people in the facilities" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectators02" runat="server" ControlToValidate="Spectators02TextBox" ErrorMessage="Spectators field is empty. Please input the amount of spectators" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <!--GAME 03 - GAME 03 - GAME 03 - GAME 03 - GAME 03 - GAME 03 - GAME 03 - -->
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorWinLose03" runat="server" ControlToValidate="WinLose03RadioButtonList" ErrorMessage="Must select one of the choices" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="PointsScored03Label" runat="server" Text="Points Scored:"></asp:Label>
                            <asp:TextBox ID="PointsScored03TextBox" runat="server" placeholder="Score of your team" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPointsScored03" runat="server" ControlToValidate="PointsScored03TextBox" ErrorMessage="Scored Points field is empty. Please input the score" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="PointsAllowed03Label" runat="server" Text="Points Allowed:"></asp:Label>
                            <asp:TextBox ID="PointsAllowed03TextBox" runat="server" placeholder="Score of the enemy team" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPointsAllowed03" runat="server" ControlToValidate="PointsAllowed03TextBox" ErrorMessage="Allowed Points field is empty. Please input the score" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="Spectators03Label" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="Spectators03TextBox" runat="server" placeholder="Amount of people in the facilities" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectators03" runat="server" ControlToValidate="Spectators03TextBox" ErrorMessage="Spectators field is empty. Please input the amount of spectators" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <!--GAME 04 - GAME 04 - GAME 04 - GAME 04 - GAME 04 - GAME 04 - GAME 04 - -->
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorWinLose04" runat="server" ControlToValidate="WinLose04RadioButtonList" ErrorMessage="Must select one of the choices" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="PointsScored04Label" runat="server" Text="Points Scored:"></asp:Label>
                            <asp:TextBox ID="PointsScored04TextBox" runat="server" placeholder="Score of your team" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPointsScored04" runat="server" ControlToValidate="PointsScored04TextBox" ErrorMessage="Scored Points field is empty. Please input the score" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="PointsAllowed04Label" runat="server" Text="Points Allowed:"></asp:Label>
                            <asp:TextBox ID="PointsAllowed04TextBox" runat="server" placeholder="Score of the enemy team" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPointsAllowed04" runat="server" ControlToValidate="PointsAllowed04TextBox" ErrorMessage="Allowed Points field is empty. Please input the score" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <asp:Label ID="Spectators04Label" runat="server" Text="Spectators:"></asp:Label>
                            <asp:TextBox ID="Spectators04TextBox" runat="server" placeholder="Amount of people in the facilities" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectators04" runat="server" ControlToValidate="Spectators04TextBox" ErrorMessage="Spectators field is empty. Please input the amount of spectators" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <asp:Button ID="SubmitButton" runat="server" Text="Summary" CssClass="btn btn-primary" OnClick="SubmitButton_Click" />
        <asp:Button ID="ClearButton" runat="server" Text="Clear" CssClass="btn btn-warning" OnClick="ClearButton_Click" Enabled="true" />
    </div>
    <!--button-->

    <br />

    <!--Display results of the form-->
    <div id="showResults" runat="server" class="hidden">
        <div id="resultStatus" class="panel panel-success" runat="server">
            <!-- Second option panel-danger-->
            <!-- Default panel contents -->
            <div class="panel-heading">Results</div>

            <!--Error display -->
            <asp:Label ID="errorListTextBox" runat="server" Text="" CssClass="hidden"></asp:Label>

            <!-- Table -->
            <asp:Table ID="Table1" runat="server" CssClass="table">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Games Won</asp:TableHeaderCell>
                    <asp:TableCell ID="gamesWonTextBox"></asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Games Lost</asp:TableHeaderCell>
                    <asp:TableCell ID="gamesLostTextBox"></asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Winning %</asp:TableHeaderCell>
                    <asp:TableCell ID="winningPercentageTextBox"></asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Total Points Scored</asp:TableHeaderCell>
                    <asp:TableCell ID="totalPointsScoredTextBox"></asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Total Points Allowed</asp:TableHeaderCell>
                    <asp:TableCell ID="totalPointsAllowedTextBox"></asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Point Differential</asp:TableHeaderCell>
                    <asp:TableCell ID="pointDifferentialTextBox"></asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Total Spectators</asp:TableHeaderCell>
                    <asp:TableCell ID="totalSpectatorsTextBox"></asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Average Spectators</asp:TableHeaderCell>
                    <asp:TableCell ID="averageSpectatorsTextBox"></asp:TableCell>
                </asp:TableHeaderRow>
            </asp:Table>

        </div>
        <!--panel panel-success-->

        <!--Button to go back-->
        <asp:Button ID="BackButton" runat="server" Text="Back" CssClass="btn btn-success" OnClick="BackButton_Click" />
    </div>
    <!--showResults-->

</asp:Content>
