require 'pry'
# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time complexity: O(n x m)
# Space complexity: O(1)

def matrix_convert_to_0(matrix)

  matrix.each do |row|
    row.each.with_index do |column, index|
      if column == 0
        #make rest of row 0

        row.length.times do |i|
          row[i] = 0
        end

        matrix.each do |row|
          row[index] = 0

        end
        next

      end

    end
  end

return matrix
end
