class Transfer
  # your code here
  attr_accessor :transfer, :status
  attr_reader :amount, :sender, :receiver,

  def initialize(sender)
    @sender = sender
    @receiver = receive
    @status = "pending"
    @amount = amount
  end
end
