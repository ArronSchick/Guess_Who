require_relative 'new_game'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'

class Game_controller
    def start_game
        Clean_up.clear_screen
        game = New_game.new
        game.new_game
        game.user_name
        game.set_secret
        game.display_table
    end
end