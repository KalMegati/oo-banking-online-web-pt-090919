class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    if !valid? or self.sender.balance < amount
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      sender.balance
    end
  end
  
end
