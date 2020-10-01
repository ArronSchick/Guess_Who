require_relative 'characters'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'
require 'tty-table'
require 'artii'

class New_game

    def initialize
        @name
        @table
        @guess_counter = 5
        @guess = nil
        @attribute = nil
        @choice = nil
        @character_names = {Peter: "Peter", Adrew: "Andrew"}
        @character_attributes = {curly_red_hair: "Curly Red Hair", blue_eyes: "Blue Eyes", big_nose: "Big Nose", short_brown_hair: "Short Brown Hair", brown_eyes: "Brown Eyes", small_nose: "Small Nose"}
        @character_list = [["Peter", "Curly Red Hair", "Blue Eyes", "Big Nose"], ["Andrew", "Short Brown Hair", "Brown Eyes", "Small Nose"]]
        @eliminated = ["eliminated".colorize(:red), "eliminated".colorize(:red), "eliminated".colorize(:red), "eliminated".colorize(:red),]
    end

    def user_name
        title = Artii::Base.new :font => 'slant'
        puts title.asciify('Guess Who?')
        prompt = TTY::Prompt.new
        puts '---------------------------------------------------------------------'
        puts ' '
        @name = prompt.ask("What is your name?")
        Clean_up.clear_screen
    end
    


    def display_table
        until @guess_counter == 0
            Clean_up.clear_screen
            title = Artii::Base.new :font => 'slant'
            puts title.asciify('Guess Who?')
            puts '---------------------------------------------------------------------'
            puts ' '
            puts @name.colorize(:green)
            puts ' '
            puts "#{@guess_counter} Guesses left".colorize(:red)
            puts ' '
            @table = TTY::Table.new
            @table << @character_list[0]
            puts @table.render(:ascii, alignment: [:center], width: 80, resize: true, multiline: true)
            prompt = TTY::Prompt.new
            choices = {Guess: 1, Check: 2, Quit: 3}
            puts ' '
            puts '---------------------------------------------------------------------'
            puts ' '
            choice = prompt.select("Make a Guess or check an attribute?", choices)
             if choice == 1
                guess_prompt = TTY::Prompt.new
                guesses = @character_names
                puts ' '
                make_guess = guess_prompt.select("Who do you think it is?", guesses)
                elsif choice == 2
                attribute_prompt = TTY::Prompt.new
                attributes = @character_attributes
                puts ' '
                check = attribute_prompt.select("Which attribute do you want to check?", attributes)
                else start = Main_menu.new
                    start.commands
            end
        end
    end
end