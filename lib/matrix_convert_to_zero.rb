# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

# matrix[row, column]
require 'pry'

def matrix_convert_to_0(matrix)

  # attempted to avoid using matrix.size.  not functional.
  # i = 0
  # rows = 0
  #
  # until matrix[i][0] == nil #get number of rows
  #   rows += 1
  #   i += 1
  # end
  #
  # j = 0
  # columns = 0
  #
  # until matrix[0, j] == nil #get number of columns
  #   columns += 1
  #   j += 1
  # end


  rows = matrix.size
  columns = matrix[0].size

  rows_to_zero = []
  columns_to_zero = []

  i = 0
  until i == rows

    j = 0
    until j == columns

      if matrix[i][j] == 0
        rows_to_zero << i
        columns_to_zero << j
      end

      j += 1

    end
    i += 1

  i = 0
  until rows_to_zero[i] == nil

    j = 0
    until j == columns
      matrix[rows_to_zero[i]][j] = 0
      j += 1
    end

    i += 1

  end

  j = 0
  until columns_to_zero[j] == nil

    i = 0
    until i == rows
      matrix[i][columns_to_zero[j]] = 0
      i += 1
    end
    j += 1
  end

  return matrix

end
