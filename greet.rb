def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(full_name)
end

yield

greet('go', 'suzuki') do |name|
  puts "Hello #{name} 👋"
end

greet('leo', 'suzuki') do |name|
  puts "Hola #{name} 👋"
end


# def map(original_array)
#   new_array = []
#   original_array.each do |element|
#     new_array << yield(element)
#   end
#   new_array
# end

# musician.map do |musician|
#   musician.split.first
# end
