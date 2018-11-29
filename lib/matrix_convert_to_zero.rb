# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
require 'pry'
def matrix_convert_to_0(matrix)
  n = 0 #rows
  m = 0 #columns

  i = 0
  j = 0
  rows = matrix.length
  columns = matrix[0].length
  zero_rows = Array.new(rows)
  zero_columns = Array.new(columns)
  while n < rows
    while m < columns
      if matrix[n][m] == 0
        zero_rows[n] = 0
        zero_columns[m] = 0
        break
      end
        m += 1
    end
    m = 0
    n += 1
  end

  while i < rows
    while j < columns
      if zero_rows[i] == 0 || zero_columns[j] == 0
        matrix[i][j] = 0
      end
      j += 1
    end
    j = 0
    i += 1
  end

  return matrix
end



print matrix_convert_to_0([[1, 0, 1, 1], [1, 1, 0, 1], [1, 1, 1, 1], [1, 1, 1, 1]])
