# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  rows_index = []
  columns_index = []

  i = 0
  matrix.each do |row|
    j = 0
    row.each do |num|
      if num == 0
        columns_index << j
        rows_index << i
      end
      j += 1
    end
    i += 1
  end

  rows = matrix.length
  columns = matrix[0].length

  i = 0
  while i < rows
    j = 0
    while j < columns
      if rows_index.include?(i) || columns_index.include?(j)
        matrix[i][j] = 0
      end
      j += 1
    end
    i += 1
  end

  return

end


#  Time complexity = O((n * m) + (n * m)) where n and m are the number of rows and columns respectively. We drop the constants and get overall, O(n^2)

# Space complexity = O (n + m) since we need to increase the storage space as the rows_index and columns_index array get more input. Overall: O(n)
