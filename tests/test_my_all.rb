require_relative '../custom_enumerables'

numbers = [1, 2, 3, 4, 5]
puts 'all?'
p numbers.all?
x = numbers.all? { |item| item.even? }
p x

puts '-' * 30
puts 'my_all?'
p numbers.my_all?
y = numbers.my_all? { |item| item.even? }
p y

a = %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
b = %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
c = %w[ant bear cat].all?(/t/) #=> false
d = [1, 2i, 3.14].all?(Numeric) #=> true
e = [1, true, 99].all? #=> true
f = [false, true, 99].all? #=> false
g = [].all? #=> true

a2 = %w[ant bear cat].my_all? { |word| word.length >= 3 } #=> true
b2 = %w[ant bear cat].my_all? { |word| word.length >= 4 } #=> false
c2 = %w[ant bear cat].my_all?(/t/) #=> false
d2 = [1, 2i, 3.14].my_all?(Numeric) #=> true
e2 = [1, true, 99].my_all? #=> true
f2 = [false, true, 99].my_all? #=> false
g2 = [].my_all? #=> true

puts '-' * 30
puts a, b, c, d, e, f, g

puts '-' * 30
puts a2, b2, c2, d2, e2, f2, g2
