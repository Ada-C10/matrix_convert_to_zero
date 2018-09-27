# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
# Time complexity is O(rows * columns) as we are iterating through rows and columns
# sequentially.
# Space complexity is O(rows * columns) as row_zero array could have
# upto rows number of elements & column_zero array could have
# upto columns number of elements

def matrix_convert_to_0(matrix)
  rows = matrix.length
  columns = matrix[0].length

  row_zero = []
  column_zero = []
  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        row_zero << row
        column_zero << column
      end
    end
  end

  row_zero.each do |r|
    columns.times do |c|
      matrix[r][c] = 0
    end
  end

  column_zero.each do |c|
    rows.times do |r|
      matrix[r][c] = 0
    end
  end
  print matrix
end
