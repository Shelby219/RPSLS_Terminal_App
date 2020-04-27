
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
RPSLS is a broader version of the classic Scissors, Paper, Rock game. It is the User versus the Computer Terminal and it has additional weapon choices of Spock and Lizard, with the  winner being the best of 5 rounds.

## Purpose of Development
I am designing this game as a way to play the classic game of RPS against the computer, but has the popular five-weapon expansion. The concept of Rock, Paper, Scissors, Spock, Lizard was invented by Sam Kass with Karen Bryla and made popular in pop culture by the Big Ban Theory! They invented this expanded version of the classic game to reduce the probability of a tie between players as there is more weapon choices. If you would like more information on this version of the game please see this link [link.](http://www.samkass.com/theories/RPSSL.html)
RPSSL the Terminal Game was created to accomodate the eager players who would like to test their skills against the computer, when another opponent is not readily available for a game.

## Target Audience
This game is designed for most age groups. From a younger computer savvy kids to adults. Being the expanded version of the game to include Spock and lizard, this terminal game will appeal to those who are a fan the pop culture of Star Trek and the Big Bang Theory. Most noteably associated with the Big Bang Theory, this game will definately appeal to a broad audience of all ages.

## Instructions 
Once the game is installed per the '[Help](#help) information section, the game will operate as follows;

To begin a welcome message will print then an overview of the simple game rules are then printed for a reminder to the player. The listed weapons are also shown and the key commands for each weapon. 

````Rock: r````
````Paper: p````
````Scissors: s````
````Spock: sp````
````Lizard: l````

The user will be prompted to press any key to continue.

The will then be asked to enter a player username.

Use the keyboard to enter your name and then click return to confirm your name.

The game will then begin, with the listed commands shown each round so the player does not need to remember which key is for which weapon.

Each round will be played by the round intiating and then the user inputting their weapon choice, with the computer auto generating its choice. The winner being the one with the superior weapon. 

A score tally will be printed at the end of each round, to show the score progress.

The aim of the game is the first to win 5 rounds wins the whole game. 

In the event of a round being a tie, no score will be added and another round will start.

Once either the player or computer reachs a total score of 5, a winner will be annouced and the game has ended.

There will be an option for the user to intiate another game, or they can quit the terminal.
    


# Features and User Interaction 
## Main Game Features
The idea of this Terminal App is to play until a score of 5 is reach for either the player or the computer player. In the beginning the player will need to enter a valid username for the game. This username must be 10 characters or less only. 
Error handling: Error in the player name input, the player must only put text as a player name. Anything else will be rescued as an error and the player will be returned to the create name.

## Game Round - Class
This is a core feature. It is a class which houses all the methods related to the game rounds and being able to loop until a the scoreboard has a winner with 5 points and also loops when a tie is reached for a round.
I still wanted the rounds to be tieable, as in real life playing this game can lead to a tie. That is why the introduction of 2 other weapons to make it a 5 choice option was ideal. It reduce the chances of a tie significantly. However, in the event of a round tieing, that round will end, and the user will be prompted for another round. The idea is the winner is the first to 5 points (or win 5 rounds), so the rounds will just continue to loop until the there is a clear winner with 5 points. The users interaction with this feature is that they will be prompted at the beginning of each round to make a weapon selection, which they will type in. The computers choice is autogeneratored and then the round results are displayed. The user is prompted to press any key to contine onto the next round. The same for if a tie is reached, the user is prompted to press any key for the another round to start. 
Error handling: For the weapon selection, an exception has been put in place for invalid entries, so they player will be asked to enter a weapon again if a wrong entry is made. 

## Rules Engine - Module
The rules engine is the module that houses all the methods pertaining to the rules of the game. It determines what equals a draw and what equals a win. The user has no interaction with this part of the code, it is in the background operating its features.
Error handling: 

## Weapons - Class
This class is initializing the weapons and their corresponding moves to defeat the 2 other weapons it can. 
ERRORS: The potential errors of this feature are mentioned above in the game round. A players invalid entry is picked up by the exception and they are asked to make another entry.

## Computer Player - Class
A key feature of this game is the fact the user is playing against the computer. This feature operates in the background of the game, in the sense that each round the user plays against the computer, rather than the computers weapon choice being a requested input like the user, it is an automatically generated random weapon choice. This ensures the 'chance' style of this game is true in nature and not a "fixed" format. The interaction the user has with the computer is at the round result of each round in the game, it shows who won that round and the score tally.


## Play Again Option - Method
This feature is in place for if the user would like to reset and start a whole new game again without exiting the application and reentering. The user will intereact with this function after the game winner annoucement has been produced. The user will have the option to return to a new game, or quit the application entirely.
Error handling: An exception is in place for if the user makes an invalid entry to the available choices, and will prompt the user to choose again so the selection is correct.

## Nice to have for future


## User Interface
To further increase the usability of the game, specific Ruby Gems were chosen.
Ruby gems installed include:
- 'tty-cursor'
To enable the computer to easily navigate the console and delete lines.
- 'tty-screen'
For the welcome message.
- 'tty-spinner'
For the loading bar after the welcome message.
- 'io/console'
To allow the "press any key option".
- 'colorize'
To enable the text to be different colours.
- 'artii'
For the alternate welcome banner.


# Control Flow Diagram

I created some flow chart diagrams using the program Lucid Chart.

Main Application Flow Chart

![Main flowchart](https://github.com/Shelby219/CA_Terminal_App_RPSLS/blob/master/docs/Main%20flowchart.png  "Main flowchart")


Game Loop Flow Chart

![Game Round Flowchart](https://github.com/Shelby219/CA_Terminal_App_RPSLS/blob/master/docs/Game%20Round%20Flowchart.png  "Game Round Flowchart")


# Implementation Plan

I used Trello as my project management tool for my implementation plan. The board can be viewed here [link.](https://trello.com/b/OeYT8sVj/caterminalapp)

## Keys for my Trello Board
Easy
Medium
Hard
Nice to have
MVP
Completed

## Lists on Trello

- Implementing the Application- This list housed my reminders for the essentional parts of the application implementation process. Including keeping my code DRY, ruby styling and conventions and utilising developer tools.
-To Do
-Currently Building
-Completed
-Issues
-Nice to Have

Screen shots of the implemenation process throughout can be seen below.

![trello_shot_1](https://github.com/Shelby219/CA_Terminal_App_RPSLS/blob/master/docs/Main%20flowchart.png  "trello_shot_1")

# Testing

## Manual

## Automatic


# Help

## Installation Instructions

Welcome to ROCK PAPER SCISSORS SPOCK LIZARD the Terminal Game.

Requirements are a command line interface on your computer.

1. Follow these instructions to [download and install](https://www.ruby-lang.org/en/documentation/installation/) Ruby on your computer. 
There are different installation commands for different systems. For example this was created on a MAC OS. Note: if you have permission issues please place ```sudo``` before each command.

In the case of a mac, Homebrew is needed to easily install Ruby.
On the command line, copy and paste:
```
> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
Then run this command line next to install ruby to your computer. This will install the latest verison of Ruby.
```
> brew install ruby
```

2. Download the App File by clicking the green 'Clone or Download' button at the top of this Git Hub Repo page. Proceed with Download Zip to Clone the file to your computer. Choose the location you want the file to be located. Unzip the folder to access all the files.

3. Next you need to install the bundler gem which enables you to download the gems needed to run this game. Note: You made need to use sudo if permission issues are present.
```
> install bundler
```

4. On the command line navigate to the src folder for the game. You can do this by typing cd which is (Change Directory). Eg cd ../../../src (the ../ represent folder names)
```
> cd 
```

5. Now you are ready to run the Bash Script to finalise the installation components and play the game!
In your Terminal. Type:
```
> ./run.sh
```

6. ALTERNATIVELY to point 5 - Once in the src folder you need to install the gems used for this game. They are ready for you to be installed. All that is needed is the command:
```
> bundle install
```
With the above processes down you now should be able to play the game! The game is run by typing:
```
> ruby main.rb
```
NOTE!: There is an option for a command line argument, the welcome banner is different. Do do this please type anything following the main file. Eg
```
> ruby main.rb "abc"
```


ENJOY ROCK PAPER SCISSORS SPOCK LIZARD The Terminal Game!


