# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  raise NotImplementedError
end
# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
# Time complexity: O(rows * columns) - the number of times the nested loop
#                             statements get executed is the number of 
#                             rows * the number of columns in the input matrix.
# Space complexity: O(rows + columns) - one additional array is created to keep
#                   track of which rows to convert to zeroes. This array is as
#                   large as the number of rows. Another array is created to
#                   track which column should be converted to zeroes. This array
#                   is as large as the number of columns in the input matrix.
def matrix_convert_to_0(matrix)
  return if matrix == nil
  rows = matrix.length
  return if rows == 0
  columns = matrix[0].length

  # create a new array of size equal to number of rows
  # this is where we track which row to convert to zeroes
  row_tracker = Array.new(rows, false)

  # create a new array of size equal to number of columns
  # this is where we track which column to convert to zeroes
  column_tracker = Array.new(columns, false)

  # check all other rows and column and track them in 0th row and 0th column
  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        column_tracker[column] = true
        row_tracker[row] = true
      end
    end
  end

  # if the corresponding 0th row, or 0th column has value of 0, make it 0
  rows.times do |row|
    columns.times do |column|
      if row_tracker[row] || column_tracker[column]
        matrix[row][column] = 0
      end
    end
  end
end
