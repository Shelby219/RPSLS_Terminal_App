require 'tty-cursor'
require 'tty-screen'
require 'tty-spinner'
require 'io/console'
require 'tty-prompt'



#WELCOME BANNER FOR THE GAME
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

centered_text("WELCOME TO ULTIMATE SCISSORS PAPER ROCK THE TERIMAL GAME")


#Spinning loading bar
spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :pulse_2)

spinner.auto_spin # Automatic animation with default interval

sleep(2) # Perform task

spinner.stop('Done!') # Stop animation

spinner = TTY::Spinner.new

puts "Press any any key to continue!"
STDIN.getch  #Waits for user input (Any Key)
puts `clear` # Clears screen after



