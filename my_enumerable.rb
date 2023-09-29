module MyEnumerable
  # Returns true if the block returns true for every element in the collection.
  # Returns false otherwise.
  def all?
    each { |num| return false unless yield(num) }
    true
  end

  # Returns true if the block returns true for at least one element in the collection.
  # Returns false otherwise.
  def any?
    each { |num| return true if yield(num) }
    false
  end

  # Returns a new array containing all elements of the collection for which the block returns true.
  def filter
    arr = []
    each { |num| arr << num if yield(num) }
    arr
  end
end
