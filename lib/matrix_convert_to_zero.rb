# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
# Time complexity: O(rows * columns) - the number of times the nested loop statements get executed
# Space complexity: O(rows + columns) - additional storage is needed to keep track of which rows and which columns need to convert to zero
def matrix_convert_to_0(matrix)
  return if matrix == nil
  rows = matrix.length
  return if rows == 0
  columns = matrix[0].length

  row_zero = false # track if 0th row needs to be made all zeroes
  column_zero = false # track if 0th column needs to be made all zeroes
  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        if row == 0
          row_zero = true
        elsif column == 0
          column_zero = true
        else
          matrix[0][column] = 0
          matrix[row][0] = 0
        end
      end
    end
  end

  # if the corresponding 0th row, or 0th column has value of 0, make it 0
  (rows-1).times do |row|
    (columns-1).times do |column|
      # if columns_tracking[column] == 0 || rows_tracking[row] == 0
      if matrix[0][column+1] == 0 || matrix[row+1][0] == 0
        matrix[row+1][column+1] = 0
      end
    end
  end

  if row_zero
    (columns).times do |column|
      matrix[0][column] = 0
    end
  end

  if column_zero
    (rows).times do |row|
      matrix[row][0] = 0
    end
  end
end
