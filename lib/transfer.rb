class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender)
    @sender = sender
    @receiver = receive
    @status = "pending"
    @amount = amount
  end
end
