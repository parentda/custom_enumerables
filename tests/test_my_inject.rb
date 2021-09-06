require_relative '../custom_enumerables'

puts 'inject'

# Sum some numbers
a = (5..10).inject(:+) #=> 45
# Same using a block and inject
b = (5..10).inject { |sum, n| sum + n } #=> 45
# Multiply some numbers
c = (5..10).inject(1, :*) #=> 151200
# Same using a block
d = (5..10).inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest =
  %w[cat sheep bear].inject do |memo, word|
    memo.length > word.length ? memo : word
  end
#=> "sheep"

puts a, b, c, d, longest

puts '-' * 30
puts 'my_inject'

# Sum some numbers
a2 = (5..10).my_inject(:+) #=> 45
# Same using a block and inject
b2 = (5..10).my_inject { |sum, n| sum + n } #=> 45
# Multiply some numbers
c2 = (5..10).my_inject(1, :*) #=> 151200
# Same using a block
d2 = (5..10).my_inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest2 =
  %w[cat sheep bear].my_inject do |memo, word|
    memo.length > word.length ? memo : word
  end
#=> "sheep"

puts a2, b2, c2, d2, longest2

def multiply_els(array)
  p array.inject(1) { |accum, num| accum * num }
  p array.inject(1, :*)
end

multiply_els([2, 4, 5])
