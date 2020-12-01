class BSort
    # О(n^2)
    # put biggest ones to the end , when 0 swaps needed you´re done
    
    def initialize
        start_time = Time.now
        @array = [3,6,4,87,4,5,6,2,3,-1]
        @swap_count = -1
        bsort(@array.length-1)
        puts "sorted: #{@array.inspect}, time: #{Time.now - start_time}"
    end

    def bsort(index)
        puts "sorting: #{@array.inspect}, swap count: #{@swap_count}"
        return if @swap_count.zero?
        @swap_count = 0
        cur = 0

        while(cur < index)
            if(@array[cur] < @array[cur+1])
                tmp = @array[cur]
                @array[cur] = @array[cur+1]
                @array[cur+1] = tmp
                @swap_count += 1
            end
            cur += 1
        end
        bsort(index-1)
    end
end

BSort.new