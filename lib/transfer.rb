require_relative './bank_account.rb'

class Transfer

 attr_reader :sender, :receiver, :amount
 attr_accessor :status

 def initialize(sender, receiver, amount, status="pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end

  def valid?
    @sender.valid? && @receiver.valid? && sender.balance > amount
  end

  def execute_transaction
    if @status == pending && self.valid? == true
      @sender.balance
  end

  def re
end
