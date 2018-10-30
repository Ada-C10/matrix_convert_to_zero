# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  puts "beginning #{matrix}"
  (matrix.length - 1).times do |i| #number of rows
    (matrix[i].length - 1).times do |j| #number of columns
      if matrix[i][j] == 0 #if something in this row/column is 0
        row = i
        column = j #select the column
        (matrix[i].length - 1).times do |j| #change the whole row to 0
          matrix[row][j] = 0
        end
        (matrix[i].length - 1).times do
          matrix[i][column] = 0
        end
      end
    end
  end
  puts "end #{matrix}"
  return matrix
end
