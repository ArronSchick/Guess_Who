require_relative 'help'
require_relative 'game_controller'
require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'
require 'artii'

class Main_menu
    def commands
        Clean_up.heading
        prompt = TTY::Prompt.new

        choices = {New_game: 1, Help: 2, Quit: 3}
        puts '-----------------------------------------------------------------------------'
        puts ' '
        choice = prompt.select("What do you want to do?", choices)

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
        end
    end
end

start = Main_menu.new
start.commands