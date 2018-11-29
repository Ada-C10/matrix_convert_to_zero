# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  rows = matrix.length
  cols = matrix[0].length

  # Check each row for 0's...
  i = 0
  rows.times do

    # ... by checking each element in the row for 0's:
    ii = 0
    cols.times do

      # If a 0 is found in row i column ii,
      if matrix[i][ii] == 0

        # Switch all the elements in the column,
        row = 0
        rows.times do
          matrix[row][ii] = 0
          row += 1
        end

        # And switch all elements in the row
        col = 0
        cols.times do
          matrix[i][col] = 0
          col += 1
        end
      end

      # ... then continue checking each element in the row for 0's.
      ii += 1
    end

    # .. then continue checking each row of the matrix for 0's.
    i += 1
  end
end

# Worst case run-time scenario: Every element is 0
# Space Complexity: O(n) linear
# Time Complexity: O(n^3) cubic
  ## O(n*n)(n+n) = O(n*n)(2n) = O(2n**3) = O(n**3) cubic
