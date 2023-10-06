module MyEnumerable
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def filter
    filtered_collection = []
    each { |item| filtered_collection << item if yield(item) }
    filtered_collection
  end
end
