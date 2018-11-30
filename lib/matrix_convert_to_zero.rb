# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  rows = matrix.length
  columns = matrix[0].length


  zeros = []
  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        zeros << {:row => row, :col => column}
        break
      end
    end
  end

  zeros.each do |zero_locations|
    rows.times do |row|
      matrix[row][zero_locations[:col]] = 0
    end

    columns.times do |column|
      matrix[zero_locations[:row]][column] = 0
    end
  end


end
