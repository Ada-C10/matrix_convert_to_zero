# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.


# Time Complexity - O(n*m) because we're iterating through the length of the outer array (n)
# and looping through the length of each inner array (m) to find all the zeros. Then we are doing
# a similiar iteration to loop through the found coordinates rows and columns to turn them to zeros. These found
# coordinates will always be up to n length - we can designate them as j. So the second part is
# O((j * n) + (j * m)).  Still, I think we would condense to O(n*m) because the time could never
# exceed the length of n * m in the worst case.

# Space Complexity is linear at O(n) because we are creating a new matrix to store the x,y coordinates
# to track where the zeroes are located. I could not come up with a way around storing this. In the worst case
# we will need to store this new array with a length of up to n.

def matrix_convert_to_0(matrix)
  zero_locations = []

  i = 0
  while i < matrix.length
    j = 0
    while j < matrix[i].length
      if matrix[i][j] == 0
        zero_locations << [j, i]
      end
      j += 1
    end
    i += 1
  end

  zero_locations.each do |coordinates|
      i = 0
      while i < matrix[coordinates[1]].length
        matrix[coordinates[1]][i] = 0
        i += 1
      end

      matrix.each do |row|
        row[coordinates[0]] = 0
      end
  end
  matrix
end
