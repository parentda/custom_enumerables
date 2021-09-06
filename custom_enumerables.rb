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
end
