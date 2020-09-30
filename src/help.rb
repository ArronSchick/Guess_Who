require 'colorize'
require 'tty-prompt'
require 'io/console'


class Help_menu
    def instructions
        Clean_up.clear_screen
        puts '------------------------------------'
        puts 'This is the help section'
        puts
        puts '------------------------------------'
        puts 'press (m) to return to main menu'
        key = gets.chomp
        if key == 'm'
            start = Main_menu.new
            start.commands
        end
    end
end