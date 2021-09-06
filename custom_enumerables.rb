module Enumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    for item in self
      yield(item)
    end
    self
  end

  def my_each_with_index
    return to_enum(:my_each_with_index) unless block_given?

    index = 0
    for item in self
      yield(item, index)
      index += 1
    end
    self
  end

  def my_select
    return to_enum(:my_select) unless block_given?

    output = []
    my_each { |item| output << item if yield(item) }
    output
  end

  def my_all?(pattern = nil, &block)
    block ||= ->(item) { item }
    if pattern
      my_each { |item| return false unless pattern === item }
    else
      my_each { |item| return false unless block.call(item) }
    end
    true
  end

  def my_any?(pattern = nil, &block)
    block ||= ->(item) { item }
    if pattern
      my_each { |item| return true if pattern === item }
    else
      my_each { |item| return true if block.call(item) }
    end
    false
  end

  def my_none?(pattern = nil, &block)
    block ||= ->(item) { item }
    if pattern
      my_each { |item| return false if pattern === item }
    else
      my_each { |item| return false if block.call(item) }
    end
    true
  end
end
