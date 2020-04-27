require 'tty-cursor' #used for welcome banner
require 'tty-screen'
require 'tty-spinner'
require 'io/console'
require 'tty-prompt' #used for 
require 'colorize'
require 'artii' #for the welcome banner in arty form- only if ARGV is used



#WELCOME BANNER FOR THE GAME
module Welcome
  module_function
  @cursor = TTY::Cursor
  @size = TTY::Screen.size # => [height, width]
  @height = @size[0]
  @width = @size[1]


  def move_cursor_to_required_coordinates(text)
    x = (@size[1] - text.length) / 2
    y = (@size[0]) / 2
    print @cursor.move_to(x, y)
  end

  def centered_text(text)
    move_cursor_to_required_coordinates(text)
    puts text
  end

  def spinner
    spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :pulse_2)
    spinner.auto_spin # Automatic animation with default interval
    sleep(2) # Perform task
    spinner.stop('Done!') # Stop animation
    spinner = TTY::Spinner.new
  end

  def continue
    puts "Press any any key to continue!".colorize(:magenta)
    STDIN.getch  #Waits for user input (Any Key)
    puts `clear` # Clears screen after
  end

 #INSTRUCTIONS
  def instructions
    puts "Made famous by the made famous by the Big Bang Theory, this is ROCK PAPER SCISSORS SPOCK LIZARD!\n\n".colorize(:green)
    puts "It is you against the computer. Try to beat the computers reign as the ultimate RPSSL CHAMPION!\n\n".colorize(:yellow)
    puts "The rules are simple:\n\n".colorize(:yellow)
    puts "Scissors cuts Paper"
    puts "Paper covers Rock"
    puts "Rock crushes Lizard"
    puts "Lizard poisons Spock"
    puts "Spock smashes Scissors"
    puts "Scissors decapitate Lizard"
    puts "Lizard Eats Paper"
    puts "Paper disproves Spock"
    puts "Spock vaporizes Rock"
    puts "Rock crushes Scissors\n\n"
  
    puts "The first to win five rounds... is the ULTIMATE RPSSL CHAMPION!\n\n".colorize(:green)
  
    puts "Press any any key to continue!".colorize(:magenta)
    STDIN.getch  #Waits for user input (Any Key)
    puts `clear` # Clears screen after
  end
end


#This is a new heading style and I incorporated a commany line arguemnt 
ARTII = Artii::Base.new font: 'small'

def art_work_diff
  puts ARTII.asciify("ROCK PAPER SCISSORS SPOCK LIZARD")
end

def if_argv
  if ARGV.empty?
    Welcome::centered_text("ROCK PAPER SCISSORS SPOCK LIZARD THE TERMINAL GAME")
  else
    art_work_diff
  end
end

#test
# if_argv
# Welcome::spinner
# Welcome::continue
# Welcome::instructions

#..........................................................................................




  

