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

        protected void Page_Load(object sender, EventArgs e)
        {

        }//Page_Load

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //Variable definition
            Game[] games = new Game[AMOUNT_OF_GAMES];
            
            //Collect the information
            games[0] = new Game(1,true,"2","3","4");

            //Display the information


        }//SubmitButton_Click

        private class Game {
            //Variables
            int gameNumber, pointsScored, pointsOpponent, spectators;
            bool winLose;

            //Constructor *** Constructor *** Constructor *** Constructor *** Constructor *** Constructor ***  
            public Game(int gameNumber, bool winLose, string pointsScored, string pointsOpponent, string spectators) {
                this.gameNumber = gameNumber;
                this.pointsScored = numericalVerification(pointsScored);
                this.pointsOpponent = numericalVerification(pointsOpponent);
                this.spectators = numericalVerification(spectators);
                this.winLose = winLose;
            }

            //Getters *** Getters *** Getters *** Getters *** Getters *** Getters *** Getters *** Getters *** 


            //Methods *** Methods *** Methods *** Methods *** Methods *** Methods *** Methods *** Methods *** 
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
                    if (returnValue < 0) {
                        Console.WriteLine("The value is less than zero");
                        returnValue = -4;
                    }//if
                }
                catch (FormatException)//Value is different than numerical
                {
                    Console.WriteLine("Non-numerical value entered");
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
        }//Game
    }
}