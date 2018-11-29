# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  matrix.each do |row|
    index = 0
    row.each do |element|
      if element == 0
        row.length.times do |i|
          row[i] = 0
        end
        matrix.length.times do |i|
          matrix[i][index] = 0
        end
      end

      index += 1
    end
  end
end

# the time complexity of this solution is O(n * m) where n is the number of elements in each row and m is the number of elements in each column
# the space complexity is O(1) because the only space required in memory by this solution is a handful of iteration variables. All transformations are performed in place.
