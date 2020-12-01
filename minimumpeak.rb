###
### You´re given numbers, an array of pairwise distinct positive
### integers. Let´s call an element of this array a peak
### if is greater than all the existing neightboring
### elements . In other words, there´s peak at index i
### if both of the following conditions are true
###

=begin 
numbers[1] > numbers[1-1] or numbers[i-1] doesnt exist
and
numbers[1] > numbers[1+1] or numbers[i+1] doesnt exist

Your task is to consecutevly remove the minimal peaks
of the given array numbers one by one, and then
return and array containing the deleted elements in the order
they were removed from the array. 
=end

numbers = [2, 7, 8, 5, 1 , 6, 3, 9, 4]
expected_result = [6,  8,  7,  5,  2, 9 , 4, 3, 1]


def minimalpeaks(numbers)
    @min_peaks_array = Array.new
    calculateminpeak(numbers)
    return @min_peaks_array
end

def calculateminpeak(array)
    return if array.empty?

    temp_mins_array = Array.new
    
    array.each_with_index do |item, index|
        if ((index-1) < 0 || array[index] > array[index-1]) && ((index+1) >= array.size() || array[index] > array[index+1])
            temp_mins_array.push(array[index])
        end
    end

    min = temp_mins_array.sort().first
    array.delete(min) if min
    @min_peaks_array.push(min) if min
    calculateminpeak(array)
end

result = minimalpeaks(numbers)
puts "result" + result.inspect
puts "expected" + expected_result.inspect