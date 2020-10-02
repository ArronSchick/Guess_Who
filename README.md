# Guess Who? Terminal Application

___

You can find my project [here on github](https://github.com/ArronSchick/Guess_Who)

### Purpose and scope

The the application will recreate a single player version of the classic boardgame Guess Who in the terminal. On beginning a new game the player will be able to add their name. Once the game has started a timer will begin, a guess count will be set and the character to be guessed is randomly selected. The player will then be presented with a table of characters. Each turn they are able to input an attribute to be checked about the secret character, guess who the character is, or quit the game. Characters on the board will be elminated depending on whether the attribute checked relates to the secret character or not. If the player guesses correctly the game ends, if not the guess counter reduces. When the guess counter reaches zero or the timer reaches zero the game ends and the player loses. If the player wins or loses they are shown a screen with their name and a message. The option to add a new character to the list used each game is available after a win. The option to quit or return to main menu is always available on the end game screen. A help section on the main menu will give clear instructions on how to use each feature of the application.

Guess Who is a classic boardgame that exists in the real world. This terminal app will replicate and implement a game that is recognisable as an adaptation of this. It will also solve the problem of boredom and satisfy the nostalgic longings of users that remember this game. The app is intened for boardgame enthusisats in general, especially those who grew up playing Guess Who. A user will be able to load the game from a file and navigate through the simple menu to start, play and end games. On winnig a game a user will set their own custom attribute to be used in all future rounds.



### App Features

1. **Guessing and Attribute checking**

   Users can either guess or check for a specific attribute each turn. Guess or attribute will be chosen based on inputs. In the case of a guess this will either satisfy a win, lose or next turn condition.  A guess is checked against the list of all attributes and the secret character. If a correct guess then win, guess counter is <= 0 then lose, guess counter not <= 0 and incorrect guess then conitnue. If an attribute is input it will be checked against the list of all attributes to see if it is valid and then against the randomly selected secret persons attributes to see if it is present. This will return a Yes or No and will eliminate characters on the board accordingly. 

2. **Character table display**

   After starting a game the user will have a table displaying all the characters in the current game. These characters are added after character creation. Each character is show as their list of attributes which are coloured accordingly. Each time an attribute is checked characters will change colour showing that they have been eliminated. If the attribute checked is shared by the secret character then all others who don't posses it will turn to dark red. If the attribute isn't shared then all characters who posess it will be eliminated. At the  end of the game whether a win or lose condition is satisfied the secret person will be revealed turning bright green.

3. **Character creation**

   Characters are created using stored information in a file. They are created at random. The names and lists of attributes will be added to instances of a character class. The user will have the option to creater additonal characters on winning a game from options on the win screen. There will be a minimum and maximum number to be created and they must have at least one attribute in common with each other. Once created the characters will be added to the list for future games. All invalid inputs for names or attibutes will display an error to the user and prompt to try again.

4. **Start and Quit**

   Control over entering and exiting games or exiting the application will be avaialble on the relevant screens. The user will be able to end current games and exit the program at anytime buy typing the appropriate command. Quitting a game will return to the use to the main menu immediately. 

5. **Player name input**

   Players will be able to input a name on starting a new game. A valid name will consist of only letters. Any other characters will be invalid and prompt the user with an error message to try a new input. This name is used at the end of a game accompanied by a message.

6. **Timer**

   A timer will begin on game start. This will create a sense of urgency for the user to discover the secret character. It also serves as a way to end the game if the timer runs out. On the end of game screen the remaining time will be displayed including 0.

   

### User interaction and UX

The user will discover how to interact with each of the programs features in a few ways. A concise information and help section that can be accessed in the documentation and clear prompts and instructions when input is required. They will use each feature by inputting simple commands and selections in the terminal. Errors will be displayed in a consistent colour and state clearly the corrections needed to provide a valid input.



### Control Flow

![Guess Who App Control Flow Diagram](/Users/arronschick/Documents/Programming/Coder_Academy/ArronSchick_T1A3/docs/Control_flow.png)



### Implementation plan

![Trello board](/Users/arronschick/Documents/Programming/Coder_Academy/ArronSchick_T1A3/docs/Trello.png)

![Trello deadlines](/Users/arronschick/Documents/Programming/Coder_Academy/ArronSchick_T1A3/docs/Trello deadlines.png)

The link to my [Trello board is here](https://trello.com/invite/b/LxEJU9nQ/37fabf924561b929e1a002054ce58ad4/guess-who-app)

1. **Guessing and Attribute checking**

   User will be propmted to input guess or check as commands. Use a case statement to check for a valid input. Once valid input is recieved prompt for input of name if a guess or attribute if checking. For guess check if the name value in the hash matches the input. If it does end the game on a win condition. If it doesn't reduce the guess counter by one. If the guess counter is <= 0 end the game on a lose condition, else prompt for check or guess command again. If checking for an attribute search the hash of secret character. If it includes the then attribute loop through each character on the board and remove those that don't have it from play. If it doesn't then loop through each character on the board and remove each character that has it from play. Prompt for check or guess again.

2. **Character table display**

   After character creation the randomly generated characters are added to the table with a .each method. The attributes are printed out in a list in each cell of the table with each attribute coloured using the colorise gem. When eliminated from play the lists will turn a dark red using a conditional statement. At the end of a game the secret character will be displayed in green when the win or lose condition triggers another conditional statement.

3. **Character creation**

   A file holding hashes of all the available characters will be looped through and randomly selected at the beginning of a game. These hashes will accessable by the table generating class and methods. Each character selected will be compared against the current contents of the table to ensure no duplicate entries are not made. 

4. **Start and Quit**

   A user input prompt will be available on startup asking for the commands to start a game or quit application. Gets will be used to take the input. A conditional will be used to determine when an input is made and if it is correct. When playing a game the quit command will be available and checked for using an if else or case statement before each round.

5. **Player name input**

   Use gets to take a user name on starting a game. Use a conditional when determining whether the input is valid. Store the use name in an array or hash and output it at the end of a game after a win or lose condition is met.

6. **Timer**

   Using clear screen and a counter method a timer will start at the beginning of a game. The time will count down until it reaches zero. When it reaches zero the loop for the timer method will stop and a lose condition will be triggered.



### Help Documentation

