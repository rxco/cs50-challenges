class CollatzE

    def initialize(n)
        @steps = 0
        collatz(n)
        
        print "#{@steps} steps required"
    end

    private
    def collatz(n)
        return if n <= 1

        if (n % 2 == 0) 
            collatz(n/2)
        else
            collatz(3*n+1)
        end
        @steps += 1
    end
end

puts "please enter a value: ..."
value = gets.chomp
CollatzE.new(value.to_i)
