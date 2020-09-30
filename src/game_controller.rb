require_relative 'new_game'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'

class Game_controller
    def start_game
        Clean_up.clear_screen
        user_name_prompt = New_game.new
        user_name_prompt.user_name
    end
end