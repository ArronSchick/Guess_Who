require 'rspec'
require_relative '../new_game'

#I couldn't figure out how to use rspec properly but tried to write some tests below in anycase
#This is meant to be testing the player name inputs and if the table contains the full list of characters and attributes. The can be found in new_game.rb in the user_name and display_table defenitions.

describe New_game do
    it 'should take and store a users name in @name variable' do
        name = New_game.new("Arron")
        expect(name.user_name).to eq "Arron"
    end
    it 'should contain all character arrays on start up'
        expect(display_table(@table)).to eq @character_list
    end
    it 'should contain all character arrays on start up'
        characters = New_game.new(@table)
        expect(@character_list).to eq (@table)
    end
end 

                    