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
  
end
