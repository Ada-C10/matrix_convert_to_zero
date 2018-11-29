# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time Complexity: O(n x m)
# Space Complexity: O(n) + O(m)
# n being the row length and m being the column length

def matrix_convert_to_0(matrix)
  rows = matrix.size
  columns = matrix[0].size
  columns_with_zeros = []
  rows_with_zeros = []

  i = 0

  while i < rows
    j = 0
    while j < columns
      if matrix[i][j] == 0
        if !columns_with_zeros.include?(j)
          columns_with_zeros << j
        end
        if !rows_with_zeros.include?(i)
          rows_with_zeros << i
        end
      end
      j += 1
    end
    i += 1
  end

  columns_with_zeros.each do |column|
    i = 0
    while i < rows
      matrix[i][column] = 0
      i += 1
    end
  end

  rows_with_zeros.each do |row|
    j = 0
    while j < columns
      matrix[row][j] = 0
      j += 1
    end
  end

  return matrix

end
