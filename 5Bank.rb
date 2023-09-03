# Assignment : 
# Design a class BankAccount with attributes account_number, balance, and methods to transfer money to another account. 
# 1. Implement methods to add accounts, deposit money, withdraw money, and check balances.

require 'colorize'

class BankAccount
    attr_accessor :account_number, :balance
  
    def initialize(account_number, balance = 0)
      @account_number = account_number
      @balance = balance
    end
  
    def deposit(amount)
      self.balance += amount
      puts "Deposited $#{amount}. New balance: $#{balance}".green
    end
  
    def withdraw(amount)
      if balance >= amount
        self.balance -= amount
        puts "Withdrew $#{amount}. New balance: $#{balance}".green
      else
        puts "Insufficient funds".red
      end
    end
  
    def transfer(amount, recipient_account)
      if balance >= amount
        self.balance -= amount
        recipient_account.balance += amount
        puts "Transferred $#{amount} to account #{recipient_account.account_number}".green
      else
        puts "Insufficient funds".red
      end
    end
  
    def check_balance
      puts "Account Number: #{account_number}. Balance: $#{balance}".blue
    end
  end

# Create two bank accounts
account1 = BankAccount.new("123456789", 1000)
account2 = BankAccount.new("987654321", 500)

# Deposit money into account1
account1.deposit(500)

# Withdraw money from account2
account2.withdraw(200)

# Transfer money from account1 to account2
account1.transfer(300, account2)

# Check balances of both accounts
account1.check_balance
account2.check_balance