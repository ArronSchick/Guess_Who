module Characters
    @character_list = [
    ["Peter", "Red Hair", "Blue Eyes", "Big Nose"],
    ["Andrew", "Brown Hair", "Brown Eyes", "Small Nose"]
    ["Jin", "Black Hair", "Brown Eyes", "Small Nose"]
    ["Minho", "Brown Hair", "Brown Eyes", "Big Nose"]
    ["Terry", "Black Hair", "Blue Eyes", "Big Nose"]
    ["Scott", "Blond Hair", "Green Eyes", "Small Nose"]
    ["Kate", "Blond Hair", "Blue Eyes", "Big Nose"]
    ["Anna", "Red Hair", "Green Eyes", "Small Nose"]
    ["Hye Jin", "Brown Hair", "Brown Eyes", "Small Nose"]
    ["Yi Seo", ""]

]

    @character_names = {Peter: "Peter", Adrew: "Andrew", Jin: "Jin", Minho: "Minho", Terry: "Terry", Scott: "Scott", Kate: "Kate", Anna: "Anna", Hye_Jin: "Hye Jin", Yi_seo: "Yi Seo", Da_hae: "Da Hae", Rachel: "Rachel"}

    @character_attributes = {red_hair: "Red Hair", brown_hair: "Brown Hair", black_hair: "Black Hair", blond_hair: "Blond Hair",  blue_eyes: "Blue Eyes", brown_eyes: "Brown Eyes", green_eyes: "Green Eyes", big_nose: "Big Nose", small_nose: "Small Nose"}

    

    def self.character_list
        @table = TTY::Table.new
        @character_list.each {|person| @table << person}
        puts @table.render(:ascii, alignment: [:center], width: 80, resize: true, multiline: true)
    end
end