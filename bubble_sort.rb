class BubbleSort
    # О(n^2)
    # put biggest ones to the end , when 0 swaps needed you´re done

    def initialize()
        start_time = Time.now
        @array_values = [5,6,1,2,1,8,-30,3,9]
        @swap_counter = -1
        puts "original array: #{@array_values.inspect}"
        bsort(@array_values.length-1)
        puts " sorted array: #{@array_values}, time: #{Time.now - start_time}"
    end

    def bsort(index)
        puts "sorting array: #{@array_values.inspect}, swap counter: #{@swap_counter}"
        return if @swap_counter.zero?
        @swap_counter = 0;
        position = 0;
        while (position < index) do
            if @array_values[position+1] > @array_values[position]
                puts "swap [#{@array_values[position+1]}] > [#{@array_values[position]}]"
                tmp_val = @array_values[position]
                @array_values[position] = @array_values[position+1]
                @array_values[position+1] = tmp_val
                @swap_counter += 1
            end
            position += 1
        end
        bsort(index-1)
    end
end

BubbleSort.new