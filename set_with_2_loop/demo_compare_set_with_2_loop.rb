
# object: Given an array of integer with integer s, finding in the array have couber of number equal with s
# example
# arr = [0, 4, 7, -2, 6, 9, 10]
# s = 9 --> true ( 0 + 9 )
# s = 3 --> false
class Worker
  attr_reader :num_of_arr, :arr, :sum

  def initialize args={}
    args = defaults.merge(args)
    @num_of_arr = args[:num_of_arr]
    @sum = args[:sum]
    init_array
  end

  def set_rand_sum
    @sum = rand (-99_999_999..99_999_999)
  end
  def num_of_arr=(num_of_arr)
    @num_of_arr = num_of_arr
    init_array
  end

  def find_sum_via_2_loop
    # binding.pry
    arr_size_1_loop = @arr.size - 2
    arr_size_2_loop = @arr.size - 1
    0.upto(arr_size_1_loop) do |i|
      next_num = i + 1
      next_num.upto(arr_size_2_loop) do |j|
        return true if @arr[i] + @arr[j] == sum
      end
    end
    return false
  end

  def find_sum_via_set
    require 'set'
    set = Set.new
    @arr.each do |element|
      return true if set.include?(@sum - element)
      set.add(element)
    end
    return false
  end

  def show_details
    puts "\nNumber of array: #{@num_of_arr}, sum: #{@sum}"
  end
  private
    def init_array
      @arr = Array.new(@num_of_arr) {rand (-99_999_999..99_999_999)}
    end
    def defaults
      {:num_of_arr => 10, :sum => 20}
    end
end

test = Worker.new

require 'benchmark'

test.show_details
Benchmark.bm(10) do |benchmark|
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
puts "-----------------------------------------------------------------------------------\n\n\n"

test.num_of_arr = 100
test.set_rand_sum
test.show_details
Benchmark.bm(10) do |benchmark|
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
puts "-----------------------------------------------------------------------------------\n\n\n"


test.num_of_arr = 1_000
test.set_rand_sum
test.show_details
Benchmark.bm(10) do |benchmark|
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
puts "-----------------------------------------------------------------------------------\n\n\n"


test.num_of_arr = 10_000
test.set_rand_sum
test.show_details
Benchmark.bm(10) do |benchmark|
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
puts "-----------------------------------------------------------------------------------\n\n\n"


test.num_of_arr = 10_000
test.set_rand_sum
test.show_details

Benchmark.bm(10) do |benchmark|
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
puts "-----------------------------------------------------------------------------------\n\n\n"


test.num_of_arr = 100_000
test.set_rand_sum
test.show_details
Benchmark.bm(10) do |benchmark|
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
puts "-----------------------------------------------------------------------------------\n\n\n"


test.num_of_arr = 100_000
test.set_rand_sum
Benchmark.bm(10) do |benchmark|
  test.show_details
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
puts "-----------------------------------------------------------------------------------\n\n\n"


test.num_of_arr = 1_000_000
test.set_rand_sum
test.show_details
Benchmark.bm(10) do |benchmark|
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
puts "-----------------------------------------------------------------------------------\n\n\n"



test.num_of_arr = 1_000_000
test.set_rand_sum
test.show_details
Benchmark.bm(10) do |benchmark|
  benchmark.report("2 loop: ") { test.find_sum_via_2_loop }
  benchmark.report("set: ") { test.find_sum_via_set }
end
p "The result of this test case is: #{p test.find_sum_via_set}"
