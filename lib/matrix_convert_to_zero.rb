# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  rows = matrix.length
  columns = matrix[0].length

  rows.times do |r|
    matrix[r].each_with_index do |num, column|
      if num == 0
        matrix[r][0] = 0
        matrix[0][column] = 0
      end
    end
  end

  rows.times do |r|
    columns.times do |c|
      unless r == 0 || c == 0
        if matrix[r][0] == 0 || matrix[0][c] == 0
          matrix[r][c] = 0
        end
      end
    end
  end

  if matrix[0][0] == 0
    columns.times do |c|
      matrix[0][c] = 0
    end
    rows.times do |r|
      matrix[r][0] = 0
    end
  end
end
