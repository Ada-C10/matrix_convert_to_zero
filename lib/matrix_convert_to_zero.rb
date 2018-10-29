# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  zero_locations = location_of_zeros(matrix)

  coordinates = 0
  while coordinates < zero_locations.length do
    row_to_change = zero_locations[coordinates][0]
    column_to_change = zero_locations[coordinates][1]

    # change row here
    change_row = 0
    while change_row < matrix.length do
      matrix[row_to_change][change_row] = 0
      change_row += 1
    end

    # change column here
    change_column = 0
    while change_column < matrix.length do
      matrix[change_column][column_to_change]
      change_column += 1
    end

    coordinates += 1
  end
  return matrix
end

def location_of_zeros(matrix)
  r = 0
  zeros = []
  while r < matrix.length do

    c = 0
    single_zero_location = []
    while c < matrix[r].length do
      if matrix[r][c] == 0
        single_zero_location << r
        single_zero_location << c
        zeros << single_zero_location
      end

      c += 1
    end

    r += 1
  end
  return zeros
end

###########################MATRIX SETUP#################################
def initialize_matrix(rows, columns)
  # create the matrix using the rows and columns
  matrix = Array.new(rows){Array.new(columns)}

  # initialize the matrix
  rows.times do |row|
    columns.times do |column|
      matrix[row][column] = 1
    end
  end

  return matrix
end


###########################TESTING#####################################
test = initialize_matrix(4,4)
test[2][3] = 0

puts "Matrix: #{test}"
#
x = location_of_zeros(test)
puts "Location of zeros: #{x}"

run = matrix_convert_to_0(test)
puts "Converted matrix: #{run}"
