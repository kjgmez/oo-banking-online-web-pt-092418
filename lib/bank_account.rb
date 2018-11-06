class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  def initialize (name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end
  def deposit (ammnt)
    self.balance = self.balance + ammnt
  end
  def display_balance
    "Your balance is $#{self.balance}."
  end
  def valid?
    self.balance > 0 && self.status == "open" ? true : false
  end
  def close_account
    self.status = "closed"
  end
end
