intro = '''
Welcome to
 _                                             
| |                                            
| |__   __ _ _ __   __ _ _ __ ___   __ _ _ __  
| '_ \ / _` | '_ \ / _` | '_ ` _ \ / _` | '_ \ 
| | | | (_| | | | | (_| | | | | | | (_| | | | |
|_| |_|\__,_|_| |_|\__, |_| |_| |_|\__,_|_| |_|
                    __/ |                      
                   |___/                       
''' 

stages = ['''
  +---+
  |   |
  O   |
 /|\  |
 / \  |
      |
=========
''', '''
  +---+
  |   |
  O   |
 /|\  |
 /    |
      |
=========
''', '''
  +---+
  |   |
  O   |
 /|\  |
      |
      |
=========
''', '''
  +---+
  |   |
  O   |
 /|   |
      |
      |
=========''', '''
  +---+
  |   |
  O   |
  |   |
      |
      |
=========
''', '''
  +---+
  |   |
  O   |
      |
      |
      |
=========
''', '''
  +---+
  |   |
      |
      |
      |
      |
=========
''']     
print(intro)             

import random

word_list = ["ardvark", "baboon", "camel"]

chosen_word = random.choice(word_list)
word_length = len(chosen_word)

print(f"Psst, the chosen word is {chosen_word}")

display = []
for pos in chosen_word:
    display += "_"
print(f"WORD: {display}")

end_of_game = False
lives = 6

while not end_of_game:
    guess = input("Choos a letter: ").lower()
   
    #check guessed answer
    for position in range(word_length):
        letter = chosen_word[position]
        if letter == guess:
            display[position] = letter
    
    if guess not in chosen_word:
       lives -= 1
       print("Wrong")
       if lives <= 0:
           end_of_game = True
           print("You Lose")
    
    print(display)
    print(stages[lives])
           


    if "_" not in display:
        end_of_game = True
        print("You win")   
