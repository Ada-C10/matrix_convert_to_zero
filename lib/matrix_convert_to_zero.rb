# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
require 'pry'

def matrix_convert_to_0(matrix)
  change_row = []
  change_column = []
  matrix.length.times do |m|
    matrix[m].length.times do |x|
      if matrix[m][x] == 0
        change_row << m
        change_column << x
      end
    end
  end

  change_row.each do |num|
    matrix[num].length.times do |x|
      matrix[num][x] = 0
    end
  end

  change_column.each do |num|
    matrix.each do |matrix|
      matrix[num] = 0
    end
  end
  return matrix
end


# matrix = [[1, 1, 1, 1, 1], [1, 1, 1, 0, 1], [1, 1, 1, 1, 0]]
#
# print matrix_convert_to_0(matrix)
