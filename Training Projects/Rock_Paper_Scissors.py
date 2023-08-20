import random

rock = '''
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
'''

paper = '''
    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)
'''

scissors = '''
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
'''

choice = input("Select Rock (0), Paper (1), Scissors (2)\n")
intchoice = int(choice)
print("Your Choice:")
if intchoice == 0:
    print(rock)
elif intchoice == 1:
    print(paper)
else:
    print(scissors)

print("Computer choice:")
compchoice = random.randint(0,2)
if compchoice == 0:
    print(rock)
elif compchoice == 1:
    print(paper)
else:
    print(scissors)
    
if intchoice == compchoice:
    print("Draw")
elif compchoice == 0 and intchoice == 1:
    print("You Win!")
elif compchoice == 0 and intchoice == 2:
    print("You Lose")
elif compchoice == 1 and intchoice == 0:
    print("You Lose")
elif compchoice == 1 and intchoice == 2:
    print("You Win!")
elif compchoice == 2 and intchoice == 0:
    print("You Win!")
elif compchoice == 2 and intchoice == 1:
    print("You Lose")
    