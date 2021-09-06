require_relative '../custom_enumerables'

numbers = [1, 2, 3, 4, 5]
puts 'none?'
p numbers.none?
x = numbers.none? { |item| item.even? }
p x

puts '-' * 30
puts 'my_none?'
p numbers.my_none?
y = numbers.my_none? { |item| item.even? }
p y

a = %w[ant bear cat].none? { |word| word.length == 5 } #=> true
b = %w[ant bear cat].none? { |word| word.length >= 4 } #=> false
c = %w[ant bear cat].none?(/d/) #=> true
d = [1, 3.14, 42].none?(Float) #=> false
e = [].none? #=> true
f = [nil].none? #=> true
g = [nil, false].none? #=> true
h = [nil, false, true].none? #=> false

a2 = %w[ant bear cat].my_none? { |word| word.length == 5 } #=> true
b2 = %w[ant bear cat].my_none? { |word| word.length >= 4 } #=> false
c2 = %w[ant bear cat].my_none?(/d/) #=> true
d2 = [1, 3.14, 42].my_none?(Float) #=> false
e2 = [].my_none? #=> true
f2 = [nil].my_none? #=> true
g2 = [nil, false].my_none? #=> true
h2 = [nil, false, true].my_none? #=> false

puts '-' * 30
puts a, b, c, d, e, f, g, h

puts '-' * 30
puts a2, b2, c2, d2, e2, f2, g2, h2
