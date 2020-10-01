require_relative 'new_game'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'

class Game_controller
    def start_game
        Clean_up.clear_screen
        game = New_game.new
        game.user_name
        game.display_table
        
    end
end