# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  rows = matrix.length
  columns = matrix[0].length
  rows_zero = []
  columns_zero = []

  rows.times do |i|
    columns.times do |j|
      if matrix[i][j] == 0
        rows_zero << i
        columns_zero << j
      end
    end
  end

  rows.times do |i|
    columns.times do |j|
      if rows_zero.include?(i) || columns_zero.include?(j)
        matrix[i][j] = 0
      end
    end
  end

  return
end
