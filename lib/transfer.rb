class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize(name)
    @sender = name
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
end
