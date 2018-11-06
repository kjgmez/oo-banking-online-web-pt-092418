class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  def valid?
    self.sender.valid? && self.receiver.valid? && self.sender.balance > self.amount ? true : false
  end
  def execute_transaction
    if self.status != "complete" && self.valid?
      self.sender.balance = self.sender.balance - self.amount
      self.receiver.balance = self.receiver.balance + self.amount
      self.status = "complete"
    else
      return "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end
  end
end
