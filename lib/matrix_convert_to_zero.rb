require 'pry'
# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  # raise NotImplementedError

  # for every row and every el in that row look for 0s and save them in a list
  zero_column = [] #holds the [column] for the zero
  zero_row = []

  matrix.length.times do |row_index| #for the number of rows in the matrix
    matrix[row_index].length.times do |column_index|  #for the number of columns in the matrix
      if matrix[row_index][column_index] == 0 #when there is a zero
        zero_column << column_index #store column coordinates
        zero_row << row_index #store row coordinates
      end
    end
  end

  #now convert items in specified rows and columns into zeros
  #for the number of rows in the array
  matrix.length.times do |row_index|
    zero_row.length.times do |zero_r_i|
      if row_index == zero_row[zero_r_i] #if the row index matches the zero row index
        matrix[row_index].length.times do |column_index| #go through each item in the column of that row
          matrix[row_index][column_index] *= 0 #convert to zero
        end
      end
    end
  end

  matrix.length.times do |row_index| #for each row
    zero_column.length.times do |zero_c_i|
      matrix[row_index].length.times do |column_index| #for each column in row
        # binding.pry
        if column_index == zero_column[zero_c_i] #if column index is equal to column index in col arr
          matrix[row_index][column_index] *= 0 #convert to zero
        end
      end
    end
  end

  #if the row index matches an index in the row array
  #go through all columns in that row and convert all elements to zero

  return matrix

end

matrix1 = [ [1, 1, 0, 1, 1], #row 1
            [1, 1, 1, 0, 1], #row 2
            [1, 1, 1, 1, 1]  #row 3
          ]

print matrix_convert_to_0(matrix1)
