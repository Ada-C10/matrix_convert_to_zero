require 'pry'
# Updates the input matrix based on the following rules:

# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

#time complexity = 2n^2, space complexity = linear depends on the how many zero there are in the array
def matrix_convert_to_0(matrix)
  length = matrix.length
  rows = []
  columns = []
  i = 0
  # a = 0
  matrix.each do |row|
    j = 0
    row.each do |column|
      if column == 0
        # j = row.find_index(column)
        # i = matrix.find_index(row)
        columns << j
        rows << i
      end
      j = j + 1
    end
    i = i + 1
  end

  length = matrix[0].length
  x = 0
  rows.each do |i|
    length.times do |x|
      matrix[i][x] = 0
      x = x + 1
    end
  end

  x = 0
  length = matrix.length
  columns.each do |j|
    length.times do |x|
      matrix[x][j] = 0
      x = x + 1
    end
  end

  return matrix
end
