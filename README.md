
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
Once the game is installed per the 'HELP' information section. The game will operate as follows;

To begin a welcome message will print and the user will be asked to enter a player username.

Use the keyboard to enter your name and then click return to confirm your name.

Then an overview of the simple game rules are then printed for a reminder to the player. The listed weapons are also shown and the key commands for each weapon. After clicking return to confirm.

````Rock: 1````
````Paper: 2````
````Scissors: 3````
````Spock: 4````
````Lizard: 5````

The game will then begin, with the listed commands shown each round so the player does not need to remember which key is for which weapon.

Each round will be played by the round intiating and then the user inputting their weapon choice, with the computer auto generating its choice. The winner being the one with the superior weapon.

The aim of the game is the first to 5 round wins with the game. In the even of a round being a tie, no score will be added and the game will continue. 

A score tally will keep a total of the score for the player and the computer opponent. 

Once either the player or computer reachs a total score of 5, a winner will be annouced and the game has ended.

There will be an option for the user to intiate another game, or they can quit the terminal.
    


# Features and User Interaction 
## Main Game Features
The idea of this Terminal App is to play until a score of 5 is reach for either the player or the computer player. In the beginning the player will need to enter a valid username for the game. This username must be text only. 
ERRORS: Error in the player name input, the player must only put text as a player name. Anything else will be rescued as an error and the player will be returned to the create name.

## What if the round ties?  - method
This is a small feature, but necessary. I still wanted the rounds to be tieable, as in real life playing this game can lead to a tie. That is why the introduction of 2 other weapson to make it a 5 choice option was ideal. It reduce the chances of a tie significantly. However, in the event of a round tieing, the round will tie and then the game will continue. The idea is the winner is the first to 5 points (or win 5 rounds), so the rounds will just continue to loop until the there is a clear winner with 5 points. The users interaction with this feature is simply they will be shown that the round has tied, and they will click return to continue another round. 
ERRORS:

## Weapons - Class
This class is initializing the weapons and their corresponding moves to defeat the 2 other weapons it can. 
ERRORS: The clear potential errors for this feature are if a user input a value that was NOT 1,2,3,4 or 5(the corresponding moves). 

## Computer Player - Class
A key feature of this game is the fact the user is playing against the computer. This feature operates in the background of the game, in the sense that each round the user plays against the computer, rather than the computers weapon choice being a requested input like the user, it is an automatically generated random weapon choice. This ensures the 'chance' style of this game is true in nature and not a "fixed" format. The interaction the user has with the computer is at the round result of each round in the game, it shows who won that round and the score tally.
ERRORS:

## Score Tally - Class
This feature is keeping a running score tally of the player and the computers score. This feature will be displayed at the end of each round to show a running total of the score. If at any point the user would like to view their score at any point during the rounds they will be able to using a key command.
ERRORS:

## Play Again Option - method
This feature is in place for if the user would like to reset and start a whole new game again without exiting the application and reentering. The user will intereact with this function after the game winner annoucement has been produced. The user will have the option to return to a new game, or quit the application entirely.
ERRORS:

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

## Help Menu- Class
This feature is designed to be of assistance during a game. 


# Control Flow Diagram




# Implementation Plan (Trello)

I used Trello as my project management tool for my implementation plan. The board can be viewed here [link.](https://trello.com/b/OeYT8sVj/caterminalapp).

## Keys for my Trello Board
Easy
Medium
Hard
Nice to have
MVP
Completed

## Usage


# Testing

## Manual

## Automatic









