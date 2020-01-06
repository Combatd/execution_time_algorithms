# my_min
# Given a list of integers find the smallest number in the list.
# O(n) complexity, just keeps adding one iteration compared to a prior number
def my_min(integers)
    smallest_number = integers.first
    integers.each { |number| smallest_number = number if number < smallest_number }
    smallest_number
end