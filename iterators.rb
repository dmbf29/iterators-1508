musicians = ['Nikita Nagras', 'Nick Westbrook', 'Kafayat Yusuf', 'Koji Mimura']
# index          0                  1                  2              3

# iterate over the indices
for index in (0...musicians.length)
  "#{index + 1}.) #{musicians[index]}"
end

# iterate over the elements
for musician in musicians
  "#{musicians.index(musician) + 1}.) #{musician}"
end

# .each
musicians.each do |musician|
  "#{musicians.index(musician) + 1}.) #{musician}"
end


# .each_with_index
musicians.each_with_index do |musician, index|
  musician.upcase
end

# .map -> builds a new array with the last line inside the block
# .collect (same as .map)
upcased = musicians.map do |musician|
  names = musician.split
  names.first.upcase
end

# .count -> counts whatever code is true
n_names = musicians.count do |musician|
  # musician[0] == 'N' # boolean
  names = musician.split
  last_name = names.last
  last_name[0] == 'N'
end

# .select -> acting as a filter/search
n_names = musicians.select do |musician|
  musician.start_with?('Z')
end

# n_names = musicians.reject do |musician|
#   musician.start_with?('N')
# end

n_name = musicians.find do |musician|
  musician.start_with?('Z')
end

n_names = musicians.each_slice(2) do |element|
  element.downcase
end

p n_names
p musicians

# .each => original array
# .map => new array []
# .count => integer
# .select => new array and only the ones we want or []
# .reject => opposite of select
# .find => the first element it finds or nil
