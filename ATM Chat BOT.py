# -*- coding: utf-8 -*-

# -- Sheet --

#Set ATM
class atm:
    def __init__(self,name,balance,password):
        self.name = name
        self.balance = balance
        self.password = password

    def withdraw(self,money):
        self.balance -= money
        print(f"Withdraw {money} THB")
        print(f"New balance:{self.balance} THB")
    
    def deposit(self, money):
        self.balance += money
        print(f"Deposit {money} THB")
        print(f"New balance:{self.balance} THB")
    
    def transfer(self,money):
        if money >= self.balance:
            print("Your balance not enought for transfer")
        else:
            print("Please input acc.no.(5 digits)")
            acc_no = int(input())
            self.balance -= money
            print(f"Transfer to acc.no.{acc_no} :{money} THB")
            print(f"New balance:{self.balance} THB")

    def check_balance(self):
        print(f"Account name:{self.name}")
        print(f"Total Balance = {self.balance}")
    
    def chg_pd(self, new_pd):
        count = 1
        while count <= 3:
            print("Please input old password (4 digits)")
            old_pd = int(input())
            if old_pd == self.password:
                self.password = new_pd
                print("Change Password Successfully")
                break
            elif count == 3:
                print("Your account is locked, please contact banking")
                break
            else:    
                print("Old password is wrong, please input again")
                count +=1

my_atm = atm("Pao",100,1234)

my_atm.check_balance()

my_atm.transfer(110)

