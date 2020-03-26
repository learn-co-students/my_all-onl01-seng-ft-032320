def my_all?(collection)
  i = 0 
  return_val = []
  while i < collection.count
    return_val << yield(collection[i])
    i += 1 
  end
  
  if
    return_val.include?(false)
      false
    else
      true 
  end
end

my_all?([1,2,3]) do |i|
  i < 2
end