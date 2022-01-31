class Oystercard
    attr_reader :balance
    MAX_LIMIT = 90

    def initialize
      @balance = 0
    end

    def top_up(amount)
      fail if MAX_LIMIT < @balance + amount 
      @balance += amount
    end

end

# irb -r './lib/oyster_card.rb'