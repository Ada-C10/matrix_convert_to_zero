require 'pry'
# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  zero_columns = [] # array to hold columns that should be 0

  rows = matrix.size  # determine number of rows in array
  columns = matrix[0].size  # determine number of columns in array
  flag = false  # set flag to indicate a 0 was found in a row

  rows.times do |row|    # First run through matrix row by row to find 0s
    columns.times do |column|
      if matrix[row][column] == 0
        zero_columns << column  # Keep track of columns where a 0 is found
        flag = true     # Set flag if a 0 is found
      end
    end
    if flag
      columns.times do |column|  # If 0 was found on a row, turn that row to 0s
        matrix[row][column] = 0
      end
      flag = false  # reset flag for next run through loop
    end
  end

  if zero_columns != []  # Run through zero_columns array to set each column listed in array to 0s
    zero_columns.each do |column|
      rows.times do |row|
        matrix[row][column] = 0
      end
    end
  end
end
