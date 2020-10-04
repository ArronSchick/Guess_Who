require_relative 'help'
require_relative 'game_controller'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'
require 'artii'


class Main_menu
    def commands
        begin
            Clean_up.clear_screen
            Clean_up.heading
            prompt = TTY::Prompt.new

            choices = {New_game: 1, Help: 2, Quit: 3}
            puts '-----------------------------------------------------------------------------'
            puts ' '
            choice = prompt.select("What do you want to do?".colorize(:yellow), choices)

            case choice
                when 1
                    new_game = Game_controller.new
                    new_game.start_game
                when 2
                    help = Help_menu.new
                    help.instructions
                when 3
                    puts ' '
                    puts 'Goodbye'.colorize(:cyan)
                    sleep(1)
                    Clean_up.clear_screen
                    begin
                        exit
                    end
                else puts ' '
                    puts "an error has occurred. restart application".colorize(:red)
                    sleep(1)
                    exit
            end

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

start = Main_menu.new
start.commands