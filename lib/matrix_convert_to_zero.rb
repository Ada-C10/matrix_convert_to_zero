# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  (matrix.length).times do |i| #number of rows times do runs 3 times
    (matrix[i].length).times do |j| #number of columns this runs 4 times
      if matrix[i][j] == 0 #if something in this row/column is 0
        row = i
        column = j #select the column
        (matrix[row].length).times do |j| #change the whole row to 0
          matrix[row][j] = 0
        end
        (matrix.length).times do |i|
          matrix[i][column] = 0
        end
      end
    end
  end
  return matrix
end

# Space Complexity:
# Regardless of the side of the matrix, we need to create two variables
#row and column to hold the position of the element that is 0.
# The row and column variables will only contain 1 integer each,
#which stays the same, thefore it is Constant O(1) Space Complexity.
#
# Time Complexity:
# There are 4 loops in this solution. The first loop will perform n times
# (where n is the number of rows that the matrix contains). The second loop
#will perform m times (where m is the number of columns the matrix contains).
# If 0 is found in a row/column combination, in the worst case the third and fourth
# loops will run row.length * column.length times, or n x n, or n**2.
# Overall, the time complexity is O(n*m) + n **2
#
#
