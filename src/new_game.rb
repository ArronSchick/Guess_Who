require_relative 'characters'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'
require 'tty-table'
require 'artii'

class New_game
    def initialize
        @name
        @guess_counter
    end

    def user_name
        prompt = TTY::Prompt.new
        @name = prompt.ask("What is your name?")
        Clean_up.clear_screen
    end

    def display_table
        title = Artii::Base.new :font => 'slant'
        puts title.asciify('Guess Who?')
        table = TTY::Table.new([['t','t'],['t','t']])
        puts table.render(:ascii, alignment: [:center])
    end
end