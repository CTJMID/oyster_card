class Oystercard
    attr_reader :balance
    attr_accessor :journey_status
    MAX_LIMIT = 90

    def initialize
      @balance = 0
      @journey_status = false
    end

    def top_up(amount)
      fail  "Maximum Limit; #{MAX_LIMIT} exceeded" if MAX_LIMIT < @balance + amount 
      @balance += amount
    end

    def deduct(amount)
      @balance -= amount
    end

    def touch_in
      @journey_status = true
    end

    def touch_out
      @journey_status = false
    end

    def in_journey?
      @journey_status
    end
end

# irb -r './lib/oyster_card.rb'