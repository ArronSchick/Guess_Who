require_relative 'characters'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'

class New_game
    def initialize
        @name
    end
    def user_name
        prompt = TTY::Prompt.new
        @name = prompt.ask("What is your name?")
        Clean_up.clear_screen
    end
end