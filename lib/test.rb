

def genre_count
@array = ["a","b","c","c"]
hash = {}
@array.each do |i|
  hash[i] = @array.count(i)
  puts hash
end
end

genre_count
