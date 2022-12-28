# -*- coding: utf-8 -*-

# -- Sheet --

#Intro
import random
print("Welcome to Pao Ying Chub Game with Python")
print("What is your name")
A = input()
print(f"Let's start {A}")
#Rule
w = 0
d = 0
l = 0
count = 1
com = [1,2,3]
print("Input 1 = Rock")
print("Input 2 = Paper")
print("Input 3 = Scissors")
#Play
while True:
  print("Your Turn")
  you = int(input())
  print("My Turn")
  com_choice = int(random.choice(com))
  print(com_choice)
  #Condition

  if you == 1 and com_choice == 1:
      print(f"Draw !!! {A}:Rock, Me:Rock")
      d += 1
  elif you == 2 and com_choice == 2:
      print(f"Draw !!! {A}:Paper, Me:Paper")
      d += 1 
  elif (you == 3 and com_choice == 3):
      print(f"Draw !!! {A}:Scissors, Me:Scissors")
      d += 1
  elif (you == 1 and com_choice == 2):
      print(f"You Lose {A}:Rock, Me:Paper")
      l += 1
  elif (you == 1 and com_choice == 3):
      print(f"You Win {A}:Rock, Me:Scissors")
      w += 1
  elif (you == 2 and com_choice == 1):
      print(f"You Win {A}:Paper, Me:Rock")
      w += 1
  elif (you == 2 and com_choice == 3):
      print(f"You Lose {A}:Paper, Me:Scissors")
      l += 1
  elif (you == 3 and com_choice == 1):
      print(f"You Lose {A}:Scissors, Me:Rock")
      l += 1
  else:
      print(F"You Win {A}:Scissors, Me:Paper")
      w +=1
  print("Do you want to continue? Y or N")
  con_play = input()
  if con_play.upper() == "Y":
      count +=1
  else:
      print("This is your result:")
      print(f"Total Round: {count}")
      print(f"Win {w} times")
      print(f"Lose {l} times")
      print(f"Draw {d} times")
      break

