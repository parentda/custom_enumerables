require_relative '../custom_enumerables'

numbers = [1, 2, 3, 4, 5]
puts 'each'
p numbers.each
x = numbers.each { |item| puts item }
p x

puts '-' * 30
puts 'my_each'
p numbers.my_each
y = numbers.my_each { |item| puts item }
p y
