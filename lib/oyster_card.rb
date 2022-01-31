class Oystercard
    attr_reader :balance
    MAX_LIMIT = 90

    def initialize
      @balance = 0
    end

    def top_up(amount)
      fail  "Maximum Limit; #{MAX_LIMIT} exceeded" if MAX_LIMIT < @balance + amount 
      @balance += amount
    end

    def deduct(amount)
      @balance -= amount
    end

end

# irb -r './lib/oyster_card.rb'