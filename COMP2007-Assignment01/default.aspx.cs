using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Assignment01
{
    public partial class _default : System.Web.UI.Page
    {
        //Global variables
        const int AMOUNT_OF_GAMES = 4;

        //---------------------------------------------------------------------------------
        protected void Page_Load(object sender, EventArgs e)
        {

        }//Page_Load

        //---------------------------------------------------------------------------------
        //Submit button
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //Testing purposes
            Console.WriteLine("Submit Button Pressed");

            //Variable definition
            Game[] games = new Game[AMOUNT_OF_GAMES];
            int gameNumber = 0;

            games[gameNumber] = new Game(++gameNumber, WinLose01RadioButtonList.SelectedValue, PointsScored01TextBox.Text, PointsAllowed01TextBox.Text, Spectators01TextBox.Text);

            games[gameNumber] = new Game(++gameNumber, WinLose02RadioButtonList.SelectedValue, PointsScored02TextBox.Text, PointsAllowed02TextBox.Text, Spectators02TextBox.Text);

            games[gameNumber] = new Game(++gameNumber, WinLose03RadioButtonList.SelectedValue, PointsScored03TextBox.Text, PointsAllowed03TextBox.Text, Spectators03TextBox.Text);

            games[gameNumber] = new Game(++gameNumber, WinLose04RadioButtonList.SelectedValue, PointsScored04TextBox.Text, PointsAllowed04TextBox.Text, Spectators04TextBox.Text);

            //Print to table
            PrintStatistics(games);

            //Hide the form
            HideForm(true);

        }//SubmitButton_Click

        //---------------------------------------------------------------------------------
        //Clear button
        protected void ClearButton_Click(object sender, EventArgs e)
        {
            //Delete all data
            //Game01
            WinLose01RadioButtonList.SelectedValue = "Win";
            PointsScored01TextBox.Text = "";
            PointsAllowed01TextBox.Text = "";
            Spectators01TextBox.Text = "";

            //Game02
            WinLose02RadioButtonList.SelectedValue = "Win";
            PointsScored02TextBox.Text = "";
            PointsAllowed02TextBox.Text = "";
            Spectators02TextBox.Text = "";

            //Game03
            WinLose03RadioButtonList.SelectedValue = "Win";
            PointsScored03TextBox.Text = "";
            PointsAllowed03TextBox.Text = "";
            Spectators03TextBox.Text = "";

            //Game04
            WinLose04RadioButtonList.SelectedValue = "Win";
            PointsScored04TextBox.Text = "";
            PointsAllowed04TextBox.Text = "";
            Spectators04TextBox.Text = "";
            

        }//Game

        //Back button
        protected void BackButton_Click(object sender, EventArgs e)
        {
            HideForm(false);
        }

        //---------------------------------------------------------------------------------
        //Hides the form and shows the table
        private void HideForm(bool hide)
        {
            if (hide)
            {
                gameCalculator.Attributes["class"] = "hidden";
                SubmitButton.CssClass = "hidden";
                ClearButton.CssClass = "hidden";
                showResults.Attributes["class"] = "";
            }
            else
            {
                gameCalculator.Attributes["class"] = "panel panel-primary";
                SubmitButton.CssClass = "btn btn-primary";
                ClearButton.CssClass = "btn btn-warning";
                showResults.Attributes["class"] = "hidden";
            }
        }//HideForm

        //---------------------------------------------------------------------------------
        //Print values to boxes
        private void PrintStatistics(Game[] games)
        {
            //Local variables
            String errorsFound, errorList = "";
            bool gamesAreOk = true;
            int gamesWon = 0, gamesLost = 0, totalPointsScored = 0, totalPointsAllowed = 0, totalSpectators = 0, pointDifferential = 0;
            float winningPercentage = 0, averageSpectators = 0;


            //Loop through each game
            foreach(Game x in games){
                //First check for errors
                errorsFound = x.returnErrorList();

                //If errors found, don't print statistics
                if (!errorsFound.Equals("")) {
                    //Games are not ok
                    gamesAreOk = false;

                    //Start getting all of the errors
                    errorList += "<b>Game[" + x.getGameNumber() + "] has the following errors:</b>" + "<br/>"+errorsFound;
                    
                }
                else
                {
                    errorList += "<b>Game[" + x.getGameNumber() + "] is Ok</b>" + "<br/>";
                }//if

                //Clear the errors found for next one
                errorsFound = null;
            }//foreach

            //if no errors were found, then proceed with the data print. If not, then proceed with the error printing
            if (gamesAreOk) { 
                //Make the table a success table
                resultStatus.Attributes["class"] = "panel panel-success";
                
                 //Loop through each game and gather the data
                foreach (Game x in games) { 
                    //Acumulate the wins and loses
                    if (x.getWinLose())
                    {
                        gamesWon++;
                    }
                    else
                    {
                        gamesLost++;
                    }

                    //Acumulate the spectators
                    totalSpectators += x.getSpectators();

                    //Acumulate points scored
                    totalPointsScored += x.getPointsScored();

                    //Acumulate points allowed
                    totalPointsAllowed += x.getPointsAllowed();

                }//foreach

                //Calculate remaining values
                //winning percentage
                winningPercentage = ((float)gamesWon / AMOUNT_OF_GAMES);

                //Point Differential
                pointDifferential = totalPointsScored - totalPointsAllowed;

                //Average spectators
                averageSpectators = (float) totalSpectators / AMOUNT_OF_GAMES;

                //Print to Table
                gamesWonTextBox.Text = gamesWon.ToString();
                gamesLostTextBox.Text = gamesLost.ToString();
                winningPercentageTextBox.Text = winningPercentage.ToString();
                totalPointsScoredTextBox.Text = totalPointsScored.ToString();
                totalPointsAllowedTextBox.Text = totalPointsAllowed.ToString();
                pointDifferentialTextBox.Text = pointDifferential.ToString();
                totalSpectatorsTextBox.Text = totalSpectators.ToString();
                averageSpectatorsTextBox.Text = averageSpectators.ToString();

            } else {
                //Panel for bad values
                resultStatus.Attributes["class"] = "panel panel-danger";
                Table1.CssClass = "hidden";
                errorListTextBox.CssClass = "";

                //Print the errors
                errorListTextBox.Text = errorList;
            }//if
        }

        //---------------------------------------------------------------------------------
        //Class to save the info about each game
        private class Game
        {
            //Variables
            private int gameNumber, pointsScored, pointsAllowed, spectators;
            private bool winLose;

            //---------------------------------------------------------------------------------
            //Constructor *** Constructor *** Constructor *** Constructor *** Constructor *** Constructor ***  
            public Game(int gameNumber, String winLose, string pointsScored, string pointsAllowed, string spectators)
            {
                this.gameNumber = gameNumber;
                this.pointsScored = numericalVerification(pointsScored);
                this.pointsAllowed = numericalVerification(pointsAllowed);
                this.spectators = numericalVerification(spectators);

                if (winLose.Equals("Win"))
                {
                    this.winLose = true;
                }
                else
                {
                    this.winLose = false;
                }
            }

            //Getters *** Getters *** Getters *** Getters *** Getters *** Getters *** Getters *** Getters *** 
            //---------------------------------------------------------------------------------
            public int getPointsScored()
            {
                return this.pointsScored;
            }

            //---------------------------------------------------------------------------------
            public int getPointsAllowed()
            {
                return this.pointsAllowed;
            }

            //---------------------------------------------------------------------------------
            public int getSpectators()
            {
                return this.spectators;
            }

            //---------------------------------------------------------------------------------
            public int getGameNumber()
            {
                return this.gameNumber;
            }

            //---------------------------------------------------------------------------------
            public bool getWinLose()
            {
                return this.winLose;
            }

            //Methods *** Methods *** Methods *** Methods *** Methods *** Methods *** Methods *** Methods *** 
            //---------------------------------------------------------------------------------
            //Checks the inputs given by the user. Returns 0 if everything is correct
            protected int numericalVerification(String input)
            {
                //Local variable definition
                int returnValue = 0;

                //Check Points Scored
                try
                {
                    //Convert the value to numerical
                    returnValue = int.Parse(input);

                    //Check if the value is negative
                    if (returnValue < 0)
                    {
                        Console.WriteLine("The value is less than zero "+input.ToString());
                        returnValue = -4;
                    }//if
                }
                catch (FormatException)//Value is different than numerical
                {
                    Console.WriteLine("Non-Numerical or Empty value entered");
                    returnValue = -1;
                }
                catch (OverflowException)//Value exceed the size of int
                {
                    Console.WriteLine("Numerical value is greater than the limit");
                    returnValue = -2;
                }
                catch (Exception)//Wow this is crazy. I dunno D:
                {
                    Console.WriteLine("Exception detected. Error not identified");
                    returnValue = -3;
                }

                //Return
                return returnValue;
            }//numericalVerification   

            //---------------------------------------------------------------------------------
            //Return the errors found on the program
            public String returnErrorList()
            {
                String errorList = "";
                bool pointsScoredAllowedOk = true;

                //Check points scored
                if (getPointsScored() < 0)
                {
                    pointsScoredAllowedOk = false;
                    switch (getPointsScored())
                    {
                        case -1:
                            errorList += "Non-Numerical or Empty value entered on Points Scored" + "<br/>";
                            break;
                        case -2:
                            errorList += "Numerical value exceeds that of a regular integer on Points Scored" + "<br/>";
                            break;
                        case -3:
                            errorList += "Call a programmer..." + "<br/>";
                            break;
                        default:
                            errorList += "The value entered on Points Scored was less than zero" + "<br/>";
                            break;
                    }//switch
                }//if

                //Check points allowed
                if (getPointsAllowed() < 0)
                {
                    pointsScoredAllowedOk = false;
                    switch (getPointsAllowed())
                    {
                        case -1:
                            errorList += "Non-Numerical or Empty value entered on Points Allowed" + "<br/>";
                            break;
                        case -2:
                            errorList += "Numerical value exceeds that of a regular integer on Points Allowed" + "<br/>";
                            break;
                        case -3:
                            errorList += "Call a programmer..." + "<br/>";
                            break;
                        default:
                            errorList += "The value entered on Points Allowed was less than zero" + "<br/>";
                            break;
                    }//switch
                }//if

                //Check Spectators
                switch (getSpectators())
                {
                    case -1:
                        errorList += "Non-Numerical or Empty value entered on Spectators" + "<br/>";
                        break;
                    case -2:
                        errorList += "Numerical value exceeds that of a regular integer on Spectators" + "<br/>";
                        break;
                    case -3:
                        errorList += "Call a programmer..." + "<br/>";
                        break;
                    case -4:
                        errorList += "The value entered on Spectators was less than zero" + "<br/>";
                        break;
                }//switch

                //Check win and lose
                if (pointsScoredAllowedOk)
                {
                    if (getPointsAllowed() != getPointsScored())
                    {
                        if (getWinLose())
                        {
                            if (getPointsAllowed() > getPointsScored())
                            {
                                errorList += "Wrong selection on the radio buttons. The points allowed were greater than the scored" + "<br/>";
                            }//if
                        }//if
                        else
                        {
                            if (getPointsAllowed() < getPointsScored())
                            {
                                errorList += "Wrong selection on the radio buttons. The points scored were greater than the allowed" + "<br/>";
                            }//if
                        }//else
                    }//if
                    else
                    {
                        //tell the user the score is the same
                        errorList += "The amount of points scored is equal to that of the allowed. Cannot proceed until the values are fixed" + "<br/>";
                    }//else
                }//if

                return errorList;
            }//returnErrorList

        }//game

    }//public partial class
}//main