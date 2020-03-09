class Transfer
  # your code here
  attr_accessor :status
  attr_reader :amount, :sender, :receiver,

  def initialize(sender)
    @sender = sender
    @receiver = receive
    @status = "pending"
    @amount = amount
  end
end
