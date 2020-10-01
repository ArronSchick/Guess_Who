require_relative 'clear_kill'
require 'colorize'
require 'tty-prompt'
require 'artii'


class Help_menu
    def instructions
        Clean_up.clear_screen
        title = Artii::Base.new :font => 'slant'
        puts title.asciify('Help').colorize(:cyan)

        prompt = TTY::Prompt.new

        puts '-----------------------------------------------------------------------------'
        puts ' '
        puts 
        prompt.keypress("Press ANY key to return to main menu")
        Clean_up.clear_screen
        start = Main_menu.new
        start.commands
    end
end