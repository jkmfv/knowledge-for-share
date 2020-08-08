# Complexity of algorithm

## Problem:
**Given an array of integer with integer 'sum', finding in the array have couple of number equal with sum**
> Example:
> - arr = [0, 4, 7, -2, 6, 9, 10]
> - sum = 9 --> true ( 0 + 9 )
> - sum = 3 --> false

We also have simple answer is using loop in loop to get each element in array and sum them like this:
```ruby
# Ruby code
def find_basic
  i = 0
  while i < @arr.size - 1
    j = i + 1
    while j < @arr.size
      return true if @arr[i] + @arr[j] == @sum
      j += 1
    end
    i += 1
  end
  false
end
```
But the complexity of above method is O(n*n). In the real world, we should avoid to using this.

## Class: Set
> Set implements a collection of unordered values with no duplicates. This is a hybrid of Array's intuitive inter-operation facilities and **Hash's fast lookup**.

I will trying to using SET class to solve the problem above

```ruby
# Ruby code
def find_set
  require 'set'
  set = Set.new
  @arr.each do |element|
    return true if set.include?(@sum - element)
    set.add(element)
  end
  false
end
```
Now the complexity of set_method is O(n) in average case!

### Result
This is my result after running the script __*demo_compare_set_with_2_loop.rb*__

![Result of tests](https://raw.githubusercontent.com/jkmfv/knowledge-for-share/master/Complexity of algorithm/ruby/result.png)

I want to test if the function is 'fasle' and start with the array of 100_000 number, the result is 207 seconds ~ 3.5 minutes and the set is also ~0.03ms

![Result of 100_000](https://raw.githubusercontent.com/jkmfv/knowledge-for-share/master/Complexity of algorithm/ruby/100_000_result.png)


### Additional information
![Image of BigO](https://raw.githubusercontent.com/jkmfv/knowledge-for-share/master/Complexity of algorithm/ruby/bigO.png)
http://bigocheatsheet.com/
