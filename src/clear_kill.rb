require 'colorize'

module Clean_up
    def self.clear_screen
        puts "\e[H\e[2J"
    end

    def self.kill_instance

    end
    
    def self.heading
        title = Artii::Base.new :font => 'slant'
        puts title.asciify('Guess Who?').colorize(:cyan)
    end
end