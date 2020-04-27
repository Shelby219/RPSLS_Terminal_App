require 'tty-cursor' #used for welcome banner
require 'tty-screen'
require 'tty-spinner'
require 'io/console'
#equire 'tty-prompt'
require 'colorize'
require 'artii' #for the welcome banner in arty form- only if ARGV is used



#WELCOME BANNER FOR THE GAME
module Welcome
  module_function
  @cursor = TTY::Cursor
  @size = TTY::Screen.size # => [height, width]
  @height = @size[0]
  @width = @size[1]

  #this is the alternate welcome message. I cant take full credit, I got a lot of this information from researching this gem.
  def move_cursor_to_required_coordinates(text)
    x = (@size[1] - text.length) / 2
    y = (@size[0]) / 2
    print @cursor.move_to(x, y)
  end
  def centered_text(text)
    move_cursor_to_required_coordinates(text)
    puts text
  end

  #spinner for the loading bar. Again got this information from researching this gem
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
    puts "Made famous by the made famous by the Big Bang Theory, this is ROCK PAPER SCISSORS SPOCK LIZARD!\n\n".colorize(:yellow)
    sleep 1
    puts "It is you against the computer. Try to beat the computers reign as the ultimate RPSSL CHAMPION!\n\n".colorize(:yellow)
    sleep 1
    puts "The rules are simple:\n\n".colorize(:yellow)
    sleep 1
    puts "Scissors cuts Paper".colorize(:blue)
    puts "Paper covers Rock".colorize(:red)
    puts "Rock crushes Lizard".colorize(:green)
    puts "Lizard poisons Spock".colorize(:magenta)
    puts "Spock smashes Scissors".colorize(:yellow)
    puts "Scissors decapitate Lizard".colorize(:blue)
    puts "Lizard Eats Paper".colorize(:magenta)
    puts "Paper disproves Spock".colorize(:red)
    puts "Spock vaporizes Rock".colorize(:yellow)
    puts "Rock crushes Scissors\n\n".colorize(:green)

    sleep 1
    puts "The first to win FIVE ROUNDS... is the ULTIMATE RPSSL CHAMPION!\n\n".colorize(:yellow)
    sleep 1
    puts "Press any any key to continue!".colorize(:magenta)
    STDIN.getch  #Waits for user input (Any Key)
    puts `clear` # Clears screen after
  end
end


#This is a new heading style and I incorporated a commany line arguemnt 
ARTII = Artii::Base.new font: 'mini'

def art_work_diff
  puts ARTII.asciify("ROCK PAPER SCISSORS SPOCK LIZARD") #main title
end

def if_argv
  if ARGV[0] == "w"
    Welcome::centered_text("ROCK PAPER SCISSORS SPOCK LIZARD THE TERMINAL GAME") #cool title
    ARGV.clear
  elsif ARGV[0] == "b"
    puts "RPSSL" #boring title haha
    ARGV.clear
  else
    art_work_diff
  end
end

#test
#  if_argv
#  Welcome::spinner
#  Welcome::continue
#  Welcome::instructions

#..........................................................................................




  

