require_relative '../custom_enumerables'

numbers = [1, 2, 3, 4, 5]
puts 'select'
p numbers.select
x = numbers.select { |item| item.even? }
p x

puts '-' * 30
puts 'my_select'
p numbers.my_select
y = numbers.my_select { |item| item.even? }
p y
