# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  return if matrix == nil
  (matrix.length).times do |row|
    (matrix[row].length).times do |column|
      if matrix[row][column] == 0
        (matrix[row].length).times do |column|
          matrix[row][column] = 0
        end
        (matrix.length).times do |row|
          matrix[row][column] = 0
        end
      end
    end
  end
  return matrix
end


# I think that time is O(n * m) with n and m representing the rows and columns
# Space is O(1) because no extra space is alocated
