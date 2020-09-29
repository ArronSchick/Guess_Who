module Menu_controller
    def new_game
        puts 'new game'
    end

    def help
        puts 'help me'
    end

    def quit_game
        puts 'back to main menu'
    end

    module_function :new_game, :help, :quit_game

end

def dispatch(command)
    case command
    when 'play'
        ::Menu_controller.new_game
    when 'help'
        ::Menu_controller.help
    when 'quit'
        
    end
end

begin
    puts '+---------------------------------------------------------+'
    puts "| Welcome to the Guess Who app. What would you like to do?|"
    puts "|     New game: 'play' | Help: 'help' | Quit: 'quit'      |"
    puts '+---------------------------------------------------------+'
    command = gets.chomp.downcase.strip
    dispatch command
end until ['quit'].include? command

