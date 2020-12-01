class SelectSort
    # O(n^2)
    # select first as current_minimum , if a smaller one found
    # they swap places
     
    def initialize
        start_time = Time.now
        @array = [3,6,4,87,4,5,6,2,3,-1]
        @current_minimum = 0
        sort(0)
        puts " sorted array: #{@array}, time: #{Time.now - start_time}"
    end

    def sort(index)
        puts "current array: #{@array}, index: #{index}"
        return if index == @array.length
        
        @current_minimum = index
        new_min_found = false
        position = index

        while(position < @array.length - 1)
            puts "is #{@array[position+1]} < #{@array[@current_minimum]} ?"
            if(@array[position+1] < @array[@current_minimum])
                @current_minimum = position+1
                new_min_found = true
                puts "min found #{@array[@current_minimum]}"
            end
            position += 1
        end
        
        swap(index, @current_minimum) if new_min_found
        sort(index+1)
    end

    def swap(position_a, position_b)
        puts "swaping #{@array[position_a]}, #{@array[position_b]}"
        tmp = @array[position_a]
        @array[position_a] = @array[position_b]
        @array[position_b] = tmp
    end
end

SelectSort.new