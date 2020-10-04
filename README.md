# Guess Who? Terminal Application

___

You can find my project [here on github](https://github.com/ArronSchick/Guess_Who)

### Purpose and scope

The the application will recreate a single player version of the classic boardgame Guess Who in the terminal. On beginning a new game the player will be able to add their name. Once a guess count will be set and the character to be guessed is randomly selected. The player will then be presented with a table of characters. Each turn they are able to input an attribute to be checked about the secret character, guess who the character is, or quit the game. Characters on the board will be elminated depending on whether the attribute checked relates to the secret character or not. If the player guesses correctly the game ends, if not the guess counter reduces. If the guess counter reaches zero the game ends and the player loses. If the player wins or loses they are shown a screen with their name and a message. The option to quit or return to main menu is always available on the end game screen. A help section on the main menu will give clear instructions on how to use each feature of the application.

Guess Who is a classic boardgame that exists in the real world. This terminal app will replicate and implement a game that is recognisable as an adaptation of this. It will also solve the problem of boredom and satisfy the nostalgic longings of users that remember this game. The app is intened for boardgame enthusisats in general, especially those who grew up playing Guess Who. A user will be able to load the game from a file and navigate through the simple menu to start, play and end games.



### App Features

1. **Guessing and Attribute checking**

   Users can either guess or check for a specific attribute each turn. Guess or check attribute will be chosen from a menu list. The use is able to navigate through this list to guess the secret character or check an attribute. Their choice will then take them to another menu that lists all available characters or attributes and they can select from these. They may navigate between these menus as they make choices until the game ends. After a check or guess is made the previous guesses and checks are stored and displayed to the user on reopening the menu so they can avoid repeating their inputs.

   

2. **Character table display**

   After starting a game the user will have a table displaying all the characters in the current game. Each character is show as their list of attributes and name. As characters are eliminated from the board when attributes are checked against the secret character. If the attribute checked is shared by the secret character then all others who don't posses it will turn to red. If the attribute isn't shared then all characters who posess it will turn red. At the  end of the game whether a win or lose condition is satisfied the secret person will be revealed.

3. **Start, Quit, Help and Name input**

   Control over entering and exiting games or exiting the application will be avaialble on the relevant screens. The user will be able to end current games and exit the program at anytime buy choosing the appropriate command. Quitting a game will return the user to the main menu immediately. Players will also be able to input a name on starting a new game. A valid name will consist of only letters. Any other characters will be invalid and prompt the user with an error message to try a new input. This name is used at the end of a game accompanied by a message.

   

### User interaction and UX

The user will discover how to interact with each of the programs features in a few ways. A concise information and help section that can be accessed in the documentation, clear prompts and instructions when input is required and help section in the main menu. They will use each feature by inputting simple commands and selections in the terminal. Errors will be displayed clearly in red.

### Control Flow

![Guess Who App Control Flow Diagram](/Users/arronschick/Documents/Programming/Coder_Academy/ArronSchick_T1A3/docs/Control_flow_Guess_Who.png)



### Implementation plan

![Trello board](/Users/arronschick/Documents/Programming/Coder_Academy/ArronSchick_T1A3/docs/Trello.png)

![Trello deadlines](/Users/arronschick/Documents/Programming/Coder_Academy/ArronSchick_T1A3/docs/Screen Shot 2020-10-02 at 6.05.34 pm.png)

The link to my [Trello board is here](https://trello.com/invite/b/LxEJU9nQ/37fabf924561b929e1a002054ce58ad4/guess-who-app)

1. **Guessing and Attribute checking**

   User will be propmted to input guess or check as commands from menu lists. Commands will be executeds using if or case statments. For a guess the name value in the secret character array will be checked against the input. If it does the end chondition will evaluate to true. If it doesn't guess counter variable will be reduced by one. If the guess counter is <= 0 the end variable evaluates to true and and if else statement presents a lose screen. A prompt for check or guess again will appear if the guess counter is still > 0. If checking for an attribute the array of the secret character is compared to the check. Each character on the board is passed into a .each block after this and chracaters are eliminated from the board.

2. **Character table display**

   Character arrays are added to the table array with a .each method. The attributes are printed out in a list in each cell of the table with each attribute and name visible. When eliminated from play characters arrays are replaced with an array with the word eliminated reapeating in red.

3. **Start, Quit, Help and Name input**

   Using tty-prompt gem to make navigation menus for all choices and commands. Once input case statements or if else statments will be used to instanciate and run methods. Name input will use a simple loop which will end when a valid input is recieved. Quit command will use an exit or kill command to end the app.

   

### Help Documentation

**Instructions**

Follow the bellow links and install the necessary gems and programs. Once installed run the program in terminal using **ruby Guess_who.rb** and follow the prompts. A help section can be found in the main menu of the app.

**Installation**

Install **bundler (2.1.4)** from [HERE](https://rubygems.org/gems/bundler). Once installed you can navigate to main directory and tyope the command **bundle install** to install the needed gems.

**Dependencies**

The program has the following gem dependencies

- gem "colorize", "~> 0.8.1"
- gem "tty-prompt", "~> 0.22.0"
- gem "tty-table", "~> 0.12.0"
- gem "artii", "~> 2.1"
- gem "rspec", "~> 3.9"

**Requirements**

Ruby 2.7.1p83 is required. Installation guides can be found [HERE](https://www.ruby-lang.org/en/)

An appropriate IDE is also needed. Vscode can be found [HERE](https://code.visualstudio.com/)