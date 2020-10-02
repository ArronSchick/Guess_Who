require_relative 'characters'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'
require 'tty-table'
require 'artii'

class New_game

    def new_game
        @name = nil
        @guess_counter = 2
        @eliminated = ["eliminated".colorize(:red), "eliminated".colorize(:red), "eliminated".colorize(:red), "eliminated".colorize(:red),]
        @end = false
        @already_checked = []
        @already_guessed = []
    end

    def user_name
        Clean_up.heading
        prompt = TTY::Prompt.new
        puts '-----------------------------------------------------------------------------'
        puts ' '
        @name = prompt.ask("What is your name?".colorize(:yellow))
        Clean_up.clear_screen
    end
    
    def set_secret
        Characters.character_list
        @secret = Characters.secret 
    end
        
    def display_table
        until @end == true
            
            Clean_up.clear_screen
            Clean_up.heading
            puts '-----------------------------------------------------------------------------'
            p @secret
            puts ' '
            puts @name.colorize(:magenta)
            puts ' '
            puts "#{@guess_counter} Guesses left".colorize(:red)
            puts ' '

            Characters.display

            prompt = TTY::Prompt.new
            choices = {Guess: 1, Check: 2, Quit: 3}
            puts ' '
            puts '-----------------------------------------------------------------------------'
            puts ' '
            choice = prompt.select("Make a GUESS or CHECK an attribute?".colorize(:yellow), choices)

             if choice == 1
                puts 'Guessed'.colorize(:red)
                puts @already_guessed
                guess_prompt = TTY::Prompt.new
                guesses = Characters.names
                puts ' '
                @guess = guess_prompt.select("Who do you think it is?".colorize(:yellow), guesses)
                @already_guessed << @guess
                    if @secret.include?(@guess)
                        @end = true
                    else @guess_counter -= 1
                        if @guess_counter == 0
                            @end = true
                        end
                        next
                    end

                elsif choice == 2
                puts 'Checked'.colorize(:red)
                puts @already_checked
                attribute_prompt = TTY::Prompt.new
                attribute_choices = Characters.attributes
                puts ' '
                @check = attribute_prompt.select("Which attribute do you want to check?".colorize(:yellow), attribute_choices)
                @already_checked << @check
                

                else start = Main_menu.new
                    start.commands

            end
        end
    end
end