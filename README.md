
# Rock, Paper, Scissors, Spock, Lizard the Terminal Game!


## Contents

1. [Statement of Purpose and Scope](#statement-of-purpose-and-scope)
2. [Features and User Interaction](#features-and-user-interaction)
3. [Control Flow Diagram](#control-flow-diagram)
4. [Implementation Plan](#implementation-plan)
5. [Testing](#testing)
5. [Help](#help)


# Statement of Purpose and Scope

## Description
RPSLS is a broader version of the classic Scissors, paper, rock game. It is the User versus the computer Terminal and it has additional weapon choices with the  winner being the best of 5 rounds.

## Purpose of Development
I am designing this game as a way to play the classic game of RPS against the computer, but has the popular five-weapon expansion. The concept of Rock, Paper, Scissors, Spock, Lizard was invented by Sam Kass with Karen Bryla and made popular in pop culture by the Big Ban Theory! They invented this expanded version of the classic game to reduce the probability of a tie between players as there is more weapon choices. If you would like more information on this version of the game please see this link [link.](http://www.samkass.com/theories/RPSSL.html)
RPSSL the Terminal Game was created to accomodate the eager players who would like to test their skills against the computer, when another opponent is not readily available for a game.

## Target Audience
This game is designed for most age groups. From a younger computer savvy kids to adults. Being the expanded version of the game to include Spock and lizard, this terminal game will appeal to those who are a fan the pop culture of Star Trek and the Big Bang Theory. Most noteably associated with the Big Bang Theory, this game will definately appeal to a broad audience of all ages.

## Instructions 
Once the game is installed per the '[Help](#help) information section, the game will operate as follows;

To begin a welcome message will print then an overview of the simple game rules are then printed for a reminder to the player. The listed weapons are also shown and the key commands for each weapon. 

````Rock: 1````
````Paper: 2````
````Scissors: 3````
````Spock: 4````
````Lizard: 5````

The user will be prompted to press any key to continue.

The will then be asked to enter a player username.

Use the keyboard to enter your name and then click return to confirm your name.

The game will then begin, with the listed commands shown each round so the player does not need to remember which key is for which weapon.

Each round will be played by the round intiating and then the user inputting their weapon choice, with the computer auto generating its choice. The winner being the one with the superior weapon.

The aim of the game is the first to win 5 rounds wins the whole game. 

In the event of a round being a tie, no score will be added and another round will start.

A score tally will keep a total of the score for the player and the computer opponent. 

Once either the player or computer reachs a total score of 5, a winner will be annouced and the game has ended.

There will be an option for the user to intiate another game, or they can quit the terminal.
    


# Features and User Interaction 
## Main Game Features
The idea of this Terminal App is to play until a score of 5 is reach for either the player or the computer player. In the beginning the player will need to enter a valid username for the game. This username must be text only. 
Error handling: Error in the player name input, the player must only put text as a player name. Anything else will be rescued as an error and the player will be returned to the create name.

## Game Round - Class
This is a core feature. It is a class which houses all the methods related to the game rounds and being able to loop until a the scoreboard has a winner with 5 points and also loops when a tie is reached for a round.
I still wanted the rounds to be tieable, as in real life playing this game can lead to a tie. That is why the introduction of 2 other weapons to make it a 5 choice option was ideal. It reduce the chances of a tie significantly. However, in the event of a round tieing, that round will end and another round will begin. The idea is the winner is the first to 5 points (or win 5 rounds), so the rounds will just continue to loop until the there is a clear winner with 5 points. The users interaction with this feature is simply they will be shown that the round has tied, and they will click return to continue another round. 
Error handling: 

## Rules Engine - Module
The rules engine is the module that houses all the methods pertaining to the rules of the game. It determines what equals a draw and what equals a win. The user has no interaction with this part of the code, it is in the background operating.
Error handling: 

## Weapons - Class
This class is initializing the weapons and their corresponding moves to defeat the 2 other weapons it can. 
ERRORS: The clear potential errors for this feature are if a user input a value that was NOT 1,2,3,4 or 5(the corresponding moves). 

## Computer Player - Class
A key feature of this game is the fact the user is playing against the computer. This feature operates in the background of the game, in the sense that each round the user plays against the computer, rather than the computers weapon choice being a requested input like the user, it is an automatically generated random weapon choice. This ensures the 'chance' style of this game is true in nature and not a "fixed" format. The interaction the user has with the computer is at the round result of each round in the game, it shows who won that round and the score tally.
Error handling: 

## Score Board - Module
This feature is holding the methods for keeping a running score tally of the player and the computers score. This feature will be displayed at the end of each round to show a running total of the score. If at any point the user would like to view their score at any point during the rounds they will be able to using a key command.
Error handling: 

## Play Again Option - Method
This feature is in place for if the user would like to reset and start a whole new game again without exiting the application and reentering. The user will intereact with this function after the game winner annoucement has been produced. The user will have the option to return to a new game, or quit the application entirely.
Error handling: 

## User Interface
To further increase the usability of the game, specific Ruby Gems were chosen.
Ruby gems installed include:
- 'tty-cursor'
- 'tty-screen'
- 'tty-spinner'
- 'io/console'
- 'tty-prompt'
- 'colorize'

Colorize is used to create a differentiate between the weapons. 

# Control Flow Diagram

I created some flow chart diagrams using the program Lucid Chart.

Main Application Flow Chart


Game Loop Flow Chart


# Implementation Plan (Trello)

I used Trello as my project management tool for my implementation plan. The board can be viewed here [link.](https://trello.com/b/OeYT8sVj/caterminalapp)

## Keys for my Trello Board
Easy
Medium
Hard
Nice to have
MVP
Completed

## Lists on Trello

README.md
This list had all the relevant cards associated with the requirements for my README.md file. The cards included, state of purpose and scope, features, user interaction, help file design, control flow diagram, project management, git hub repo, status updates and the main implementation plan.

Implementing the Application
This list housed my reminders for the essentional parts of the application implementation process. Including keeping my code DRY, ruby styling and conventions and utilising developer tools.

To Do

Currently Building

Completed

Issues

Nice to Have


# Testing

## Manual

## Automatic









