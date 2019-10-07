class Transfer
  
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount, status = "pending")
    @giver = giver
    @receiver = receiver
    @amount = amount
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    return "Transaction rejected. Please check your account balance." unless valid?
    
  end
  
end
