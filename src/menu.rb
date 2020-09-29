module Menu
    require "tty-prompt"

    prompt = TTY::Prompt.new

    choices = {newgame: 1, help: 2, quit: 3}

    choice = prompt.select("What do you want to do?", choices)

    case choice
        when 1
            puts 'new game'
        when 2
            puts 'help me'
        when 3
            puts 'Goodbye'
            sleep(2)
    end
end


