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
        @guess = nil
        @character_list = [["Peter", "Red Hair", "Blue Eyes", "Big Nose"],
        ["Andrew", "Brown Hair", "Blue Eyes", "Small Nose"],
        ["Jin", "Black Hair", "Brown Eyes", "Small Nose"],
        ["Minho", "Brown Hair", "Brown Eyes", "Big Nose"],
        ["Terry", "Black Hair", "Blue Eyes", "Big Nose"],
        ["Scott", "Blond Hair", "Green Eyes", "Small Nose"],
        ["Kate", "Blond Hair", "Blue Eyes", "Big Nose"],
        ["Anna", "Red Hair", "Green Eyes", "Small Nose"],
        ["Hye Jin", "Brown Hair", "Brown Eyes", "Small Nose"],
        ["Yi Seo", "Blond Hair", "Brown Eyes", "Big Nose"],
        ["Da Hae", "Black Hair", "Green Eyes", "Small Nose"],
        ["Rachel", "Red Hair", "Brown Eyes", "Big Nose"]]
    end

    def user_name
        until @name == String
            Clean_up.heading
            prompt = TTY::Prompt.new
            puts '-----------------------------------------------------------------------------'
            puts ' '
            @name = prompt.ask("What is your name?".colorize(:yellow))
            @name.to_s
            if @name.is_a? String
                puts ' '
                puts 'Thankyou'.colorize(:light_blue)
                sleep(1)
                return @name
            else puts "INVALID INPUT\nPlease try again".colorize(:red)
                sleep(1)
                Clean_up.clear_screen
                next
            end 
        end
    end

    def set_secret
        @secret = @character_list.sample
    end
    
    def display_table
        begin
            until @end == true
                Clean_up.clear_screen
                Clean_up.heading
                puts '-----------------------------------------------------------------------------'
                puts ' '
                puts @name.colorize(:light_cyan)
                puts ' '
                puts "#{@guess_counter} Guesses left".colorize(:red)
                puts ' '
                @table = TTY::Table.new
                @character_list.each {|person| @table << person}
                puts @table.render(:ascii, alignment: [:center], width: 80, resize: true, multiline: true)
                # p @secret
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
                        if @secret.include?(@guess) == true
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
                        if @secret.include?(@check) == false
                            @character_list.each {|person| if person.include?(@check)
                                                            person.replace(@eliminated)
                                                            end}
                        else @character_list.each {|person| if person.include?(@check) == false
                            person.replace(@eliminated)
                            end}
                        end
                    
                    else start = Main_menu.new
                        start.commands

                end
                
                
            end
            prompt = TTY::Prompt.new
            puts '-----------------------------------------------------------------------------'
            puts ' '
            if @secret.include?(@guess) == true
                puts "You were right it was #{@secret[0]}".colorize(:light_cyan)
                puts ' '
                puts "Congrtulations **#{@name}** YOU WON!".colorize(:light_cyan)
                puts ' '
            else
                puts "Sorry. It was #{@secret[0]}".colorize(:light_cyan)
                puts ' '
                puts "Better luck next time.  **#{@name}**".colorize(:light_cyan)
                puts ' '
            end
            prompt.keypress("Press ANY key to return to main menu".colorize(:light_blue))
            Clean_up.clear_screen
            start = Main_menu.new
            start.commands
        rescue NoMethodError => e
            puts "An error occurred: #{e.inspect}".colorize(:red)
            sleep(0.5)
            puts "Exiting application".colorize(:red)
            sleep(1)
            exit
        rescue NameError => e
            puts "An error occurred: #{e.inspect}".colorize(:red)
            sleep(0.5)
            puts "Exiting application".colorize(:red)
            sleep(1)
            exit
        rescue StandardError => e
            puts "An error occurred: #{e.inspect}".colorize(:red)
            sleep(0.5)
            puts "Exiting application".colorize(:red)
            sleep(1)
            exit
        end
    end
    
end