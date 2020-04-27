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

Decided to scrap the score_board.rb for the moment, it was complicating things quite a bit. Significant progress on game_round.rb, stuck on a few errors, no method error etc. Rework file requiring, and the control flow I think.

## Status Update #5
Saturday 25th of April

The methods I created to be able to use the actual terms for each round, eg "paper covers rock", is not working at the moment. That has been moved to a nice to have purely due to time. So it has been changed to beats for the winning rounds. I will try to implement that in future.

A raise and recue method input for the players choice in the game_round.rb.

Have trouble creating a show_score method for the player being able to view there score.

Modules are definately my friend and I am getting used to using them, but missing module_function is killing me! :/

Have trouble with the player_score and computer_score instance variable updating...
FIXED! 

Had some issues with the variable for the player name, changed to a class variable and it runs!.

intro.rb file edited with rules and welcome message.

Added a if else to declare a winner one the score of 5 is reached for either player or computer! It is working it just prints 2 or 3 times, it gets mixed in with the while loop. Refactor this.
### Current features my code contains:
Weapons Module
Rules Engine Module
Computer Player Class
Game Round Class with a player module
MainGame.rb
-Username input
-Play Again Method
intro.rb file which houses the introduction code


## Status Update #6
Sunday 26th of April

Refactored tests due to code change. 3 tests for the rules_engine.rb were refactored due to code refactoring, they still test the same results and now pass again. 

Checked the weapons_test.rb file and all tests still pass.

Checked if the computer_player_test.rb still passes. 

Winner declaration is still repeating at the moment.. Resolved by putting it as a seperate method in the class and using self to call it!

Error with uninitilized class variable for name, error fixed.

4 tests completed and run for the game_round.rb file.

Working on final main.rb file. Implementing raise and rescue for the play again option. Refactor tomorrow as not working...


## Status Update #7
Monday 27th of April

Refactoring the exception for the input for playing again. Refactored and now working. Changed to case statement as this suited the functions needed.

Refactored intro.rb to house the methods in module for consistancy.

Incorporated a command line arguement for switching up the introduction heading. If an arguement is given then the welcome heading will be different.

Final tests checked and passing.