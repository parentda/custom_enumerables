require_relative '../custom_enumerables'

numbers = [1, 2, 3, 4, 5]
puts 'any?'
p numbers.any?
x = numbers.any? { |item| item.even? }
p x

puts '-' * 30
puts 'my_any?'
p numbers.my_any?
y = numbers.my_any? { |item| item.even? }
p y

a = %w[ant bear cat].any? { |word| word.length >= 3 } #=> true
b = %w[ant bear cat].any? { |word| word.length >= 4 } #=> true
c = %w[ant bear cat].any?(/d/) #=> false
d = [nil, true, 99].any?(Integer) #=> true
e = [nil, true, 99].any? #=> true
f = [].any? #=> false

a2 = %w[ant bear cat].my_any? { |word| word.length >= 3 } #=> true
b2 = %w[ant bear cat].my_any? { |word| word.length >= 4 } #=> true
c2 = %w[ant bear cat].my_any?(/d/) #=> false
d2 = [nil, true, 99].my_any?(Integer) #=> true
e2 = [nil, true, 99].my_any? #=> true
f2 = [].my_any? #=> false

puts '-' * 30
puts a, b, c, d, e, f

puts '-' * 30
puts a2, b2, c2, d2, e2, f2
