# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  row = 0
  column = 0

  while row < matrix.length
    while column < matrix[row].length

      if matrix[row][column] == 0

        matrix[row].length.times do |i|
          matrix[row][i] = 0
        end

        matrix.length.times do |i|
          matrix[i][column] = 0
        end

      end

      column += 1
    end

    row += 1
    column = 0
  end

  return matrix
end

# Time complexity: O(rc)
# Space complexity: O(1)
