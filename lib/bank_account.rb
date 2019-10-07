class BankAccount
  
  attr_reader :name, :status, :balance
  
  def initialize (name, status = open, :balance = 0)
    @name = name
    @status = status
    @balance = 0
  end
  
  def deposit(input)
    @balance += input
  end
  
  def display balance
    self.balance
  end
  
end