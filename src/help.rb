require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'


class Help_menu
    def instructions
        Clean_up.clear_screen
        puts '---------------------------------------------------------------------'
        puts 'This is the help section'
        puts
        puts '---------------------------------------------------------------------'
     
        prompt = TTY::Prompt.new

        choices = {Main_menu: 1}
        puts '---------------------------------------------------------------------'
        choice = prompt.select("Return to main menu", choices)
            if choice == 1
                start = Main_menu.new
                start.commands
            else puts 'Something went wrong. Ending program'.colorize(:red)
                begin
                    exit
                end
            end
    end
end