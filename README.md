# execution_time_algorithms

# Learning Goals

* Be able to determine the time and space complexity of a method
* Be able to compare the time complexity of one method to another
* Be able to recognize when time or space complexity can be improved

## my_min
Given a list of integers, find the smallest number in the list.
```
 list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
 my_min(list)  # =>  -5
```

### Phase 1
First, I will write a function that compares each element to every other element of the list. It returns the element if all other elements in the array are larger.
What is the time complexity for this function?

### Phase 2
Now, I rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?


