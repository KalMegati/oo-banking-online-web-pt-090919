class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    return if status == "complete"
    if !valid? or sender.balance < amount
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    end
  end
  
  def reverse_transfer
    sender.balance -= amount
    receiver.balance += amount
  end
  
end
