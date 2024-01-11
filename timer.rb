def timer
  puts 'starting timer...'
  start_time = Time.now
  # do some stuff / run some code
  if block_given?
    yield
  end
  puts "Elapsed time: #{Time.now - start_time}"
end

timer

timer do
  puts "Starting the block (fast)..."
  sleep(1)
  puts "...finished"
end

# timer do
#   puts "Starting the block (slow)..."
#   sleep(3)
#   puts "...finished"
# end
