# Development Log
## Status Update #1
Tuesday the 21st of April
My terminal app is an idea my husband gave me, to create Rock Paper Scissors as a terminal app format. I decided to use the 5 weapon expanded version, make popular on the Big Bang Theory called Rock Paper Scissors Spock Lizard. Doing this I thought the game would appeal to a broad audience, especially users that appreciated Star Trek and the Big Bang Theory pop culture. It also allows for the chances of tieing to decrease, as there are 5 choices for weapons. I still wanted tieing to be an aspect of this game, as when played in real life the game has tieing allowed.

To initiate my assessment I began physically drawing some rough draft control-flow diagrams. I then moved to an application called Lucid to do some more detailed control flow diagrams. 

I set up my Trello board with all my planning lists and cards, and started the main to do list which is for my application creation and implementation.

I began writing up the table for my manual test cases and inputting some of the test ideas I wanted to complete.


### Current features my code contains:
Weapons Class
Computer Player Class
Score Board Class
MainGame.rb
-Username input
-Play Again Method

### Current bugs I am fixing:




## Status Update #2
Wednesday the 22nd of April

Finalise 2 flow charts, one of which is the main flow chart, and the other the game class loop flow chart.

Today I readjusted some of the main features of my application. 

Introduced a game round class which will be the main game loop, it will take information from the weapons module constant and another module for the rules.
Introduced a rules engine module as I just need the rules to be in a neat module, there does not need to be multiple instance objects for the rules for the game. The logic just needed to be in a module. Player 1 made that move player 2, this is the result. 
Change the weapons class into a weapons module, I thought making the weapons as a constand in a module would be better suited rather then a class. As a constant is a value that are not supposed to change. 

I was able to write some proper tests, following along with what Zeb was able to show my yesterday, I continued on with testing the rules engine (Credit to Zeb for created that name (Rules Engine), but I liked it so I kept it- sorry!). I was able to test the rules engine module method for a draw, the module method for the player winning, and the module method for the computer winning.

I also conducted tests on the weapons module, testing if the hash for entrys included the key 'r' which will be the players option for typing. I also did a test that checked that the constant hash ENTRY and the variable COMPUTER_CHOICES( which is taking the values from the ENTRY has and making it a new array), would equal an example I gave it. I gave it the example of :ROCK. The Test passed.

### Current features my code contains:
Weapons Module
Rules Engine Module
Computer Player Class
Score board Class
MainGame.rb
-Username input
-Play Again Method




## Status Update #3
Thursday the 23rd of April

An intro.rb file was created to house the introduction methods and content, to keep it seperate from the main.rb file. Starting testing for the score board test file, created a test that would check if the add_score method would add a point to the player_score instance variable. The test did not pass, came back nil. Need to refactor. Score_board.rb was started on.

## Status Update #4
Friday the 24th of April

The score_board.rb was changed from a class to a module. Having it as a class did not seem to fit the needs. A module holding the methods for adding scores was better suited.

Score_board.rb is possibly not needed as an MVP, it is a bit complicated at the moment. The KISS method is important!

Got extremely stuck on checking if a variable was in an array (In Weapons.rb file), I was stuck on the fact it is an array of arrays. Parentheses was the issue..... :/. Solved!