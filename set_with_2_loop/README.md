# Complexity of algorithm

## Problem:
**Given an array of integer with integer sum, finding in the array have couple of number equal with sum**
> Example:
> - arr = [0, 4, 7, -2, 6, 9, 10]
> - sum = 9 --> true ( 0 + 9 )
> - sum = 3 --> false

We also have simple answer is using loop in loop to get each element in array and sum them like this:
```ruby
# Ruby code
def basic_method(arr, sum)
    0.upto(arr.size) do |i|
      next_num = i + 1
      next_num.upto(arr.size) do |j|
        return true if arr[i] + arr[j] == sum
      end
    end
    return false
end
```
But the complexity of above method is O(n*n). In the real world, we should avoid to using this.

## Class: Set
> Set implements a collection of unordered values with no duplicates. This is a hybrid of Array's intuitive inter-operation facilities and **Hash's fast lookup**.

We will trying to using SET to solve the problem above

```ruby
# Ruby code
def set_method(arr, sum)
    require 'set'
    set = Set.new
    arr.each do |element|
      return true if set.include?(sum - element)
      set.add(element)
    end
    return false
end
```
Now the complexity of set_method is O(n) in average case!

### Result
This is my result after running the script __*demo_compare_set_with_2_loop.rb*__

| Number of element in array | basic_method | set_method |
| ------ | ------ | ------ |
| 10 | 0.000008  | 0.001424 |
| 100 | 0.322 milisecond|  0.033 milisecond|
| 1000 | 31.286 milisecond | 0.210 milisecond |
| 10.000 | 3,083.408 milisecond | 1.790 milisecond |
| 100.000 | 7,560.072 milisecond| 6.802 milisecond |
| 1.000.000 | 30,085.548 milisecond | 1.313 milisecond |
