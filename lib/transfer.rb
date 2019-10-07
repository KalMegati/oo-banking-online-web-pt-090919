class Transfer
  
  attr_reader :sender, :receiver, :amount, :status
  
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
    return "Transaction rejected. Please check your account balance." unless valid?
    
  end
  
end
