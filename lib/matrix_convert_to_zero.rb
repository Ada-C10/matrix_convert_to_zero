# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.


def matrix_convert_to_0(matrix)
  count_row = matrix.length
  count_column = matrix[0].length

   h_row = Array.new(count_row)
   h_column = Array.new(count_column)

   count_column.times do |j|
     count_row.times do |i|
       if matrix[i][j] == 0
         if !h_row[i]
           h_row[i] = 0
         end
         if !h_column[j]
           h_column[j] = 0
         end
       end
     end
   end

   count_row.times do |i|
     if h_row[i] == 0
       count_column.times do |j|
         matrix[i][j] = 0
       end
     end
   end

   count_column.times do |j|
     if h_column[j] == 0
       count_row.times do |i|
         matrix[i][j] = 0
       end
     end
   end
end
