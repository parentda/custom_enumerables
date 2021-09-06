require_relative '../custom_enumerables'

numbers = [1, 2, 4, 2]
puts 'count'
p numbers.count
x = numbers.count { |item| item.even? }
p x

puts '-' * 30
puts 'my_count'
p numbers.my_count
y = numbers.my_count { |item| item.even? }
p y

a = numbers.count #=> 4
b = numbers.count(2) #=> 2
c = numbers.count { |x| x % 2 == 0 } #=> 3

a2 = numbers.my_count #=> 4
b2 = numbers.my_count(2) #=> 2
c2 = numbers.my_count { |x| x % 2 == 0 } #=> 3

puts '-' * 30
puts a, b, c

puts '-' * 30
puts a2, b2, c2
