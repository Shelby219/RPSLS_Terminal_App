#Weapons

# Scissors cuts Paper
# Paper covers Rock
# Rock crushes Lizard
# Lizard poisons Spock
# Spock smashes Scissors
# Scissors decapitate Lizard
# Lizard Eats Paper
# Paper disproves Spock
# Spock vaporizes Rock
# Rock crushes Scissors

module Weapons
#This is a constant variable which is holding the key which is the type command for the moves, and the value as the moves as symbols
    ENTRY = {'r' => :ROCK ,'p' => :PAPER ,'s' => :SCISSORS,'sp' => :SPOCK ,'l' => :LIZARD}

    PLAYER_ENTRIES   = ENTRY.keys 
    COMPUTER_CHOICES = ENTRY.values

    
    PLAYER_WIN = [ 
    # format: player choice, computer choice
                [:SCISSORS, :PAPER   ], 
                [:PAPER   , :ROCK    ], 
                [:ROCK    , :SCISSORS],
                [:LIZARD  , :SPOCK   ],
                [:SPOCK   , :SCISSORS],
                [:SCISSORS, :LIZARD  ],
                [:LIZARD  , :PAPER   ],
                [:PAPER   , :SPOCK   ],
                [:SPOCK   , :ROCK    ],
                [:ROCK    , :SCISSORS]
        ]
    # COMPUTER_WIN ARRAY this will take the original PLAYER_WIN  array and flip the symbols, thus returning a loss for the user/player and creating new array
    COMPUTER_WIN = PLAYER_WIN.map { |player_choice,computer_choice| [computer_choice,player_choice] } 
    
end

puts Weapons::COMPUTER_CHOICES


    
        
        






