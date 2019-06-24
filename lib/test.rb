array=["a","b", "c", "a","d","b"]
for i in (0...array.length)
  for j in (0...i)
    if array[j]==array[i]
      array.delete_at(i)
    end
  end
end
array

#  ["a","b", "c", "a"].each do |letter|
#    puts ["a","b", "c", "a"].index(letter)
#  end
