require_relative 'my_list'

# Create list
list = MyList.new(1, 2, 3, 4)

# Test all? : Should return true and false respectively
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })

# Test any? : Should return true and false respectively
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })

# Test filter : Should return [2, 4]
print(list.filter(&:even?))
