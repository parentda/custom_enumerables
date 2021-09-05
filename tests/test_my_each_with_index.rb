require_relative '../custom_enumerables'

numbers = [1, 2, 3, 4, 5]
puts 'each_with_index'
p numbers.each_with_index
x =
  numbers.each_with_index do |item, index|
    puts "item: #{item}; index: #{index}"
  end
p x

puts '-' * 30
puts 'my_each_with_index'
p numbers.my_each_with_index
y =
  numbers.each_with_index do |item, index|
    puts "item: #{item}; index: #{index}"
  end
p y
