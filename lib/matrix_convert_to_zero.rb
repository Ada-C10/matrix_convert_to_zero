# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

# arrays to store the values of the indices in the matrix that have zeros
  rows = []
  cols = []

  matrix.length.times do |row_index|
    matrix[0].length.times do |col_index|
      if matrix[row_index][col_index] == 0
        rows << row_index
        cols << col_index
      end
    end
  end

  rows.each do |r_index|
    matrix[0].length.times do |c_index|
      matrix[r_index][c_index] = 0
    end
  end

  cols.each do |c_index|
    matrix.length.times do |r_index|
      matrix[r_index][c_index] = 0
    end
  end

  return matrix

end
