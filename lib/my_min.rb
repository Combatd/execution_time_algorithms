# my_min
# Given a list of integers find the smallest number in the list.
# Phase 1
# O(n^2) time complexity, must run quicksort partitions even if already sorted
# Can be done with nested loops
# def my_slow_min(list)
#   list.each { |num| return num if list.all? { |ele| num <= ele } }
# end
def my_min_exponential(integers)
    integers.sort!.first
end

# Phase 2
# O(n) time complexity, iterates through just once
def my_min(integers)
    smallest_number = integers.first
    integers.each { |number| smallest_number = number if number < smallest_number }
    smallest_number
end

# You have an array of integers and you want to find the largest 
# contiguous (together in sequence) sub-sum. 
# Find the sums of all contiguous sub-arrays and return the max.
# Phase 1
# O(n^3ß)
example_1 = [5, 3, -7]
example_2 = [2, 3, -6, 7, -6, 7]
example_3 = [-5, -1, -3]

def largest_contiguous_subsum(integers)
    sub_sums = []
    integers.each_with_index do |number, index|
        integers[index..-1].each_with_index do |sub_num, index2|
            # outer element compares to inner element
            sub_sums << integers[index..index+index2]
        end
    end

    # return where the array is greater than previous accumulated sum
    # inject is a reducer method
    sub_sums.inject([0]) do |accumulator, array| 
        if array.sum > accumulator.sum 
            array
        else
            accumulator
        end
    end

end

p largest_contiguous_subsum(example_1)
p largest_contiguous_subsum(example_2)
p largest_contiguous_subsum(example_3)

# Phase 2
def largest_contiguous_subs(numbers)
    # point to value of first element
    largest_sum = numbers.first
    current_sum = numbers.first 
    # Handle negative numbers
    return numbers.max if numbers.all? { |num| num < 0 }
    # accumulate all after first element
    numbers.each_with_index do |number, idx|
        next if idx === 0
        current_sum = 0 if current_sum < 0
        current_sum += number
        largest_sum = current_sum if current_sum > largest_sum
    end
    largest_sum
end


p largest_contiguous_subs(example_1)
p largest_contiguous_subs(example_2)
p largest_contiguous_subs(example_3)