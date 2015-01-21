# Mastermind

## Object oriented analysis and design processes:
1. Gather your *Requirements*
2. *Describe* the app
3. *Identify* the main objects
4. Describe the *Interactions*
5. Create a *Class Diagram*

### 1. Gather *Requirements*
The app must play the game of mastermind in the console where you have 12 turns to guess the secret code.

Build the game assuming the computer randomly selects the secret colors and the human player must guess them.

### 2. *Describe* the app

The idea of the game is for one player (the code-breaker) to guess the secret code chosen by the other player (the code-maker). The code is a sequence of 4 colored pegs chosen from six colors available. The code-breaker makes a serie of pattern guesses - after each guess the code-maker gives feedback in the form of 2 numbers, the number of pegs that are of the right color and in the correct position, and the number of pegs that are of the correct color but not in the correct position - these numbers are usually represented by small black and white pegs.

*User stories*:
1. As a player I want to guess the code to win the game
2. As a code-maker I want to make a code to prevent player from winning
3. As a code-maker I want to give feedback to the player

### 3. *Identify* the main objects
* Player
* Game
* Code

### 4. Describe the *Interactions*

Game  (is played by) Player (makes|try to guess) Code

### 5. Create a *Class Diagram*

#### Player
Attributes:
+ name
+ code
+ points

Methods:
+ guess code
+ make code

#### Game
Attributes:
+ code_maker
+ code_breaker
+ rounds

Methods:
+ play
- switch_players
- solicid_move
- game_over_message
- correct?

#### Code
Attributes:
+ value

Methods:
+ compare
- evaluate
