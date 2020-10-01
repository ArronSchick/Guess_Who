require 'colorize'



people = [ 
    {name: 'peter', hair_color:'red', hair_style: 'short straight', eyes: 'blue'.colorize(:blue)}, 
    
    {name: 'andrew', hair_color: 'red'.colorize(:red), hair_style: 'long straight', eyes: 'brown'},

    {name: 'anna', hair_color: 'red'.colorize(:red), hair_style: 'short curly', eyes: 'brown'},

    {name: 'sarah', hair_color: 'red'.colorize(:red), hair_style: 'long wavy', eyes: 'green'.colorize(:green)},
    
    {name: 'jessica', hair_color: 'brown', hair_style: 'short straight', eyes: 'blue'.colorize(:blue)}, 
    
    {name: 'John', hair_color: 'brown', hair_style: 'long straight', eyes: 'brown'},

    {name: 'Terry', hair_color: 'brown', hair_style: 'short curly', eyes: 'brown'},

    {name: 'Amanda', hair_color: 'brown', hair_style: 'long wavy', eyes: 'green'.colorize(:green)},

    {name: 'Linda', hair_color: 'blond'.colorize(:yellow), hair_style: 'short straight', eyes: 'blue'.colorize(:blue)}, 
    
    {name: 'scott', hair_color: 'blond'.colorize(:yellow), hair_style: 'long straight', eyes: 'brown'},

    {name: 'Charlie', hair_color: 'blond'.colorize(:yellow), hair_style: 'short curly', eyes: 'brown'},

    {name: 'Kate', hair_color: 'blond'.colorize(:yellow), hair_style: 'long wavy', eyes: 'green'.colorize(:green)} 
]