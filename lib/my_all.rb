require 'pry'
collection = [1, 2, 3]

def my_all?(collection)
  i = 0
  while i < collection.length
  return false if !yield (collection[i])
   i = i + 1   #i += 1 does the same thing. Use this if it's easier for you.
  end
  true
end

my_all?(collection){|i| i < 3}