# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# Time Complexity: O(n^2) + O(n^2) + O(n * m) = O(n^2) + O(n * m)

# Space Complexity: O(n)
def matrix_convert_to_0(matrix)

  # creates an array of the positions of 0
  i = 0
  j = 0
  index = 0
  zeros = []

  while matrix[index] != nil do
    while matrix[i][j] != nil do
      if matrix[i][j] == 0
        zeros << [i, j]
      end

      j += 1
    end

    i += 1
    j = 0
    index += 1
  end


  # replaces 1's with 0's via rows
  n = 0
  index = 0

  while zeros[index] != nil do
    k = 0

    while matrix[zeros[n][0]][k] != nil do
      matrix[zeros[n][0]][k] = 0
      k += 1
    end
    n += 1

    index += 1
  end

  # replaces 1's with 0's via columns
  n = 0
  index = 0

  while zeros[index] != nil do
    l = 0

    while matrix[l] != nil do
      matrix[l][zeros[n][1]] = 0
      l += 1
    end
    n += 1

    index += 1
  end

  return matrix
end
