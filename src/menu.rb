require_relative 'help'
require_relative 'game_controller'
require_relative 'clear_kill'
require "colorize"
require "tty-prompt"

class Main_menu
    def commands
        Clean_up.clear_screen
        prompt = TTY::Prompt.new

        choices = {newgame: 1, help: 2, quit: 3}
        puts '---------------------------------------------------------------------'
        choice = prompt.select("What do you want to do?", choices)

        case choice
            when 1
                new_game = Game_controller.new
                new_game.start_game
            when 2
                help = Help_menu.new
                help.instructions
            when 3
                puts '+---------+'.colorize(:green)
                puts '| Goodbye |'.colorize(:green)
                puts '+---------+'.colorize(:green)
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