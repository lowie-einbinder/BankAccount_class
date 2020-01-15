# Exercise 1: Bank Account
# Create a BankAccount class
# Every bank account should have balance and interest_rate attributes
# At this point you should test out creating an instance of your class to make sure it works
# Your class should have an instance method called deposit that accepts one amount argument and adds that amount to the total balance
# Test out your method by calling it on an instance of your class
# There should be a withdraw instance method that accepts one amount argument and subtracts it from the total balance
# Don't forget to test it out!
# Finally, there should be a gain_interest instance method that increases the total balance according to the interest rate.
# Once all of that is working, don't forget to commit!

class BankAccount
    
    def initialize(money)
        @balance = money
        @interest_rate = 3.5
    end

    def deposit(amount)
        @balance = amount + @balance
    end

    def withdraw(amount) #no space
        @balance -= amount
    end

    def gain_intrest
        @balance = @balance * (1 + @interest_rate)
    end


end

my_account = BankAccount.new(50)

wellsfargo = BankAccount.new(100)
p wellsfargo

my_account.deposit(150)
p my_account

my_account.withdraw(50)
p my_account

my_account.gain_intrest

p my_account

wellsfargo.deposit(5000)
wellsfargo.withdraw(300)
wellsfargo.gain_intrest
wellsfargo.gain_intrest
wellsfargo.deposit(100000000)
my_account.deposit(500)
my_account.withdraw(500)
my_account.gain_intrest

p my_account
p wellsfargo