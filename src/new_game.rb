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
        title = Artii::Base.new :font => 'slant'
        puts title.asciify('Guess Who?')
        prompt = TTY::Prompt.new
        puts '---------------------------------------------------------------------'
        @name = prompt.ask("What is your name?")
        Clean_up.clear_screen
    end

    def guess_counter
        @guess_counter = 5
    end

    def display_table
        title = Artii::Base.new :font => 'slant'
        puts title.asciify('Guess Who?')
        puts '---------------------------------------------------------------------'
        header = ["Name: #{@name}", "Guesses left: #{@guess_counter}", "People left: ", "Time left: "]
        rows = [:separator, ['test', 'is', 'a', 'test'], :separator, ['things', 'diff', 'a', 'yes'], :separator, ['things', 'diff', 'a', 'yes']]
        table = TTY::Table.new(header, rows)
        puts table.render(:ascii, alignment: [:center], width: 80, resize: true)
    end
end