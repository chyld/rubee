def flatten(arr)
  arr.inject([]) do |a, val|
    val.is_a?(Array) ? a + flatten(val) : a.push(val)
  end
end

puts flatten([1,2,3,[4,5],[6,7,[8,9,[10,11]]]]).inspect

### ----------------------------------------------- ###

@mem = {0=>0, 1=>1}
def fib(n)
  return @mem[n] if @mem[n]
  @mem[n] = fib(n-1) + fib(n-2)
end

25.times do |i|
  puts "i #{i} -> fib(i) #{fib(i)}"
end

### ----------------------------------------------- ###
