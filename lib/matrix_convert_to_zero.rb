# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  rows = matrix.length
  columns = matrix[0].length

  zeroes = {}

  rows.times do |r|
    columns.times do |c|
      if matrix[r][c] == 0
        zeroes[r] = c
      end
    end
  end

  zeroes.each do |row, column|
    rows.times do |r|
      if row == r
        columns.times do |num|
          matrix[r][num] = 0
        end
      end
      matrix[r][column] = 0
    end
  end

end
