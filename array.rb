musicians = ['Nikita Nagras', 'Nick Westbrook', 'Kafayat Yusuf', 'Koji Mimura']
# index          0                  1                  2              3

# CRUD

# Create
# array.push(new_value)
# array << new_value
musicians << 'Go Suzuki'

# Read
# array[index]
musicians[0]
musicians[-1]
musicians[0..2]
musicians.index('Nick Westbrook')
musicians.first
musicians.last

# Update
# array[index] = new_value
musicians[-1] = 'Go Suzuki'

# Delete
# array.delete(value)
# array.delete_at(index)
musicians.delete('Go Suzuki')
musicians.delete_at(-1)
