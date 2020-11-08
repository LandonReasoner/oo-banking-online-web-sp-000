class Transfer
  
  attr_accessor :sender, :reciever, :amount, :status
  
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever 
    @amount = amount
  end 
end
