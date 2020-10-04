require_relative 'new_game'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'

class Game_controller
    def start_game
        begin
            Clean_up.clear_screen
            game = New_game.new
            game.new_game
            game.user_name
            game.set_secret
            game.display_table
            game.game_end
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