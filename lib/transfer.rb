class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    if valid? && sender.balance > amount
      if status == "pending"
        sender.balance -= amount
        receiver.balance += amount
        self.status = "complete"
      end
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if valid? && receiver.balance > amount
      if status == "complete"
        receiver.balance -= amount
        sender.balance += amount
        self.status = "reversed"
      end
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end
