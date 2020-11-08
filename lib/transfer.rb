class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    if sender.valid? && receiver.valid?
      true
    else 
      false 
    end 
  end
  
  def execute_transaction 
    if @sender.valid?
      @sender.deposit( @amount * -1 )
      @receiver.deposit( @amount )
      @status = "complete"
    elsif @status == "complete"
      puts "Transaction was already executed"
    else @sender.balance < @amount 
      @status = "rejected"
      return "Your transaction was rejected. Please check your account balance."
    end 
  end 
end
