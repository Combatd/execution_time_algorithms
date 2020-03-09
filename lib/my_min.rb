# my_min
# Given a list of integers find the smallest number in the list.
# Phase 1
# O(n^2) time complexity, must run quicksort partitions even if already sorted
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