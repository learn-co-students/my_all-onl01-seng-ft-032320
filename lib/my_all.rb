require 'pry'

def my_all?(collection)
  i = 0 
  new_array = []
  
  while collection.length > i 
  new_array << yield(collection[i])
  
  i = i + 1
  end 
  if new_array.include?(false)
    false
  else 
    true 
  end 
end


my_all?([1, 2, 3]) { |num| 
  num < 4
}