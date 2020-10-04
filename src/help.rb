require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'
require 'artii'


class Help_menu
    def instructions
        begin
            Clean_up.clear_screen
            Clean_up.heading

            prompt = TTY::Prompt.new
            puts '-----------------------------------------------------------------------------'
            puts ' '
            puts 'INSTRUCTIONS'.colorize(:light_blue)
            puts ' '
            puts "Follow the prompts and use the ARROW keys and ENTER to select commands and \nmake choices in the game menus. When starting a new game you are required\nto put in your name. Capitals or uppercase are fine. When making choices in \ngame a list of previous guesses and checks will be displayed. The game ends\nwhen you A) Guess the correct person or B) Run out of guesses. To end a game\nselect quit from the menu. To quit the application select quit when you are\nin the main menu".colorize(:light_yellow)
            puts' '
            prompt.keypress("Press ANY key to return to main menu")
            Clean_up.clear_screen
            start = Main_menu.new
            start.commands
            
        rescue NoMethodError => e
            puts "An error occurred: #{e.inspect}".colorize(:red)
            sleep(0.5)
            puts "Exiting application".colorize(:red)
            sleep(1)
            exit
        rescue NameError => e
            puts "An error occurred: #{e.inspect}".colorize(:red)
            sleep(0.5)
            puts "Exiting application".colorize(:red)
            sleep(1)
            exit
        end
    end
end