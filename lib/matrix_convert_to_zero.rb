# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)

  # array to hold sub arrays of 0 el occurrences
  converter_arr = []
  matrix.each_with_index do |x, xi| # O(n2)
    x.each_with_index do |y, yi|
      if matrix[xi][yi].zero?
        converter_arr << [xi, yi]
        puts "element [#{xi}, #{yi}] is #{y}"
        p converter_arr
      end
    end
  end
  unless converter_arr.empty?
    converter(matrix, converter_arr)
  end

  return matrix
end

def converter(matrix, converter_arr)
  # converter array contains sub arrays of row,col pairs where 0 occurred
  # in original matrix, this serves as flag locations to
  # determine which rows and cols will be converted to 0s

  converter_arr.each do |pair| # [[0, 3], [2,1]] => O(n)
    temp_col = 0
    while temp_col < matrix[0].length # O(n)
      a = pair[0]
      matrix[a][temp_col] = 0
      temp_col += 1
    end

    temp_row = 0
    while temp_row < matrix[0].length # O(n)
      b = pair[1]
      matrix[temp_row][b] = 0
      temp_row += 1
    end
  end

  return matrix
end


matrix1 = [[1, 1, 1, 0],
           [1, 1, 1, 1],
           [0, 1, 1, 0],
           [0, 1, 0, 1]]

p matrix_convert_to_0(matrix1)

# Time complexity is O(n^2) to iterate across the entire matrix
# rows and columns, then the converting process is dependent upon
# the number of pairs that get stored in the converter_arr (aka the
# number of flags that were raised for vectors where 0 occurred)
# The time complexity for the conversion of specific rows and columns
# is dependent on the number of flags(0 occurrences). I think that
# overall, T = O(n^2 + 2n) or simplified T = O(n^2 + n)
# Space complexity is O(n), meaning that the matrix gets changed in place
# and the only additional storage required is in the building
# of the converter_arr which is dependent on the # of 0 occurrences among
# all the vectors


