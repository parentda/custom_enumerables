require_relative '../custom_enumerables'

numbers = [1, 2, 3, 4, 5]
proc = Proc.new { |item| item * 2 }
puts 'map'
p numbers.map
x = numbers.map { |item| item * 2 }
p x

puts '-' * 30
puts 'my_map'
p numbers.my_map
y = numbers.my_map { |item| item * 2 }
y2 = numbers.my_map(proc)
p y, y2

a = (1..4).map { |i| i * i } #=> [1, 4, 9, 16]
b = (1..4).map { 'cat' } #=> ["cat", "cat", "cat", "cat"]

a2 = (1..4).my_map { |i| i * i } #=> [1, 4, 9, 16]
b2 = (1..4).my_map { 'cat' } #=> ["cat", "cat", "cat", "cat"]
a3 = (1..4).my_map(Proc.new { |i| i * i }) { |i| i * i } #=> [1, 4, 9, 16]
b3 = (1..4).my_map(Proc.new { 'cat' }) #=> ["cat", "cat", "cat", "cat"]

puts '-' * 30
p a, b

puts '-' * 30
p a2, b2, a3, b3
