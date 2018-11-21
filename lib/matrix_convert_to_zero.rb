# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  # store coordinates of the 0s here like: [[r1, c2], [r2,c2]]
  targets = []

  matrix.length.times do |row|
    matrix[row].each_with_index do |value, col|
      if value == 0
        coordinate = [row, col]
        targets << coordinate
      end
    end
  end

  # do we have any 0s?
  if targets[0]
    targets.each do |coordinate|
      row = coordinate[0]
      col = coordinate[1]

    # zero out the row
      matrix[row].length.times do |each_col|
        matrix[row][each_col] = 0
      end

      # zero out the column
      matrix.length.times do |each_row|
        matrix[each_row][col] = 0
      end
    end
  end
  return matrix
end
