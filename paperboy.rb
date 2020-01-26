class Paperboy

    def initialize (name)
    @name = name
    @experience = 0
    @earnings = 0
    end
    
    def earnings
        return @earnings
    end

    def quota
        if @experience == 0
            @quota = 50
        else 
            @quota = 50 + @experience / 2 
        end
    end

    def deliver(start_address, end_address)
      number_of_houses = end_address - start_address
      if number_of_houses == quota
        a = number_of_houses * 0.25
        @earnings += a
      elsif number_of_houses > quota
        extra_houses = number_of_houses - quota
        regular_earnings = quota * 0.25
        @earnings += regular_earnings
        extra_earnings = extra_houses + 0.50
        @earnings += extra_earnings
        elsif number_of_houses < quota
            @earnings -= 2.0
        end
        @experience += number_of_houses
        @earnings
    end

    def report
        return "im #{@name}, I've delivered #{@quota}, papers and earned #{@earnings} so far "
    end

end

tommy = Paperboy.new("Tommy")

p tommy.quota
p tommy.deliver(100, 160)
p tommy.earnings 
p tommy.report 

p tommy.quota
p tommy.deliver(1, 75)
p tommy.earnings
p tommy.report


