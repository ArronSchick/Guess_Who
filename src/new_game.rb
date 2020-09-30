require_relative 'characters'
require_relative 'clear_kill'
require 'colorize'
require "tty-prompt"

class Game_controller
    def start_game
        Clean_up.clear_screen
        puts ' Stuff'
    end
end