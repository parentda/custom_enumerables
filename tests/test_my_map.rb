require_relative '../custom_enumerables'

numbers = [1, 2, 3, 4, 5]
puts 'map'
p numbers.map
x = numbers.map { |item| item * 2 }
p x

puts '-' * 30
puts 'my_map'
p numbers.my_map
y = numbers.my_map { |item| item * 2 }
p y

a = (1..4).map { |i| i * i } #=> [1, 4, 9, 16]
b = (1..4).map { 'cat' } #=> ["cat", "cat", "cat", "cat"]

a2 = (1..4).map { |i| i * i } #=> [1, 4, 9, 16]
b2 = (1..4).map { 'cat' } #=> ["cat", "cat", "cat", "cat"]

puts '-' * 30
p a, b

puts '-' * 30
p a2, b2
