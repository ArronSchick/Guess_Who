require 'colorize'
module Characters_all
    def self.characters
        people = { 
            peter: {hair_color:'red'.colorize(:red), hair_style: 'short straight', eyes: 'blue'.colorize(:blue), nose: 'small', mouth: 'thin'}, 
            
            andrew: {hair_color: 'red'.colorize(:red), hair_style: 'long straight', eyes: 'brown', nose: 'big', mouth: 'small'},

            anna: {hair_color: 'red'.colorize(:red), hair_style: 'short curly', eyes: 'brown', nose: 'pointy', mouth: 'big'},

            sarah: {hair_color: 'red'.colorize(:red), hair_style: 'long wavy', eyes: 'green'.colorize(:green), nose: 'wide', mouth: 'big'},
            
            jessica: {hair_color: 'brown', hair_style: 'short straight', eyes: 'blue'.colorize(:blue), nose: 'small', mouth: 'thin'}, 
            
            john: {hair_color: 'brown', hair_style: 'long straight', eyes: 'brown', nose: 'big', mouth: 'small'},

            terry: {hair_color: 'brown', hair_style: 'short curly', eyes: 'brown', nose: 'pointy', mouth: 'big'},

            amanda: {hair_color: 'brown', hair_style: 'long wavy', eyes: 'green'.colorize(:green), nose: 'wide', mouth: 'big'},

            linda: {hair_color: 'blond'.colorize(:yellow), hair_style: 'short straight', eyes: 'blue'.colorize(:blue), nose: 'small', mouth: 'thin'}, 
            
            scott: {hair_color: 'blond'.colorize(:yellow), hair_style: 'long straight', eyes: 'brown', nose: 'big', mouth: 'small'},

            charlie: {hair_color: 'blond'.colorize(:yellow), hair_style: 'short curly', eyes: 'brown', nose: 'pointy', mouth: 'big'},

            kate: {hair_color: 'blond'.colorize(:yellow), hair_style: 'long wavy', eyes: 'green'.colorize(:green), nose: 'wide', mouth: 'big'} 
        }
    end
end