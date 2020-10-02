require_relative 'characters'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'
require 'tty-table'
require 'artii'

class New_game

    def initialize
        @name
        @guess_counter = 2
        @guess = nil
        @attribute = nil
        @choice = nil
        @eliminated = ["eliminated".colorize(:red), "eliminated".colorize(:red), "eliminated".colorize(:red), "eliminated".colorize(:red),]
        @end = false
    end

    def user_name
        Clean_up.heading
        prompt = TTY::Prompt.new
        puts '-----------------------------------------------------------------------------'
        puts ' '
        @name = prompt.ask("What is your name?")
        Clean_up.clear_screen
    end
    
    def display_table
        until @end == true

            Clean_up.heading
            puts '-----------------------------------------------------------------------------'
            puts ' '
            puts @name.colorize(:cyan)
            puts ' '
            puts "#{@guess_counter} Guesses left".colorize(:red)
            puts ' '

            Characters.character_list
            secret = Characters.secret
            p secret

            prompt = TTY::Prompt.new
            choices = {Guess: 1, Check: 2, Quit: 3}
            puts ' '
            puts '-----------------------------------------------------------------------------'
            puts ' '
            choice = prompt.select("Make a Guess or check an attribute?", choices)

             if choice == 1
                guess_prompt = TTY::Prompt.new
                guesses = Characters.names
                
                puts ' '
                make_guess = guess_prompt.select("Who do you think it is?", guesses)

                elsif choice == 2
                attribute_prompt = TTY::Prompt.new
                attributes_choices = Characters.attributes

                puts ' '
                check = attribute_prompt.select("Which attribute do you want to check?", attributes)
                else start = Main_menu.new
                    start.commands

            end
        end
    end
end