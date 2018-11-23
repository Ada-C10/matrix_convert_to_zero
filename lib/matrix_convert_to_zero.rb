# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  current_matrix = 0
  current_loc = 0
  delta = 0

  while current_matrix <= (matrix.length - 1) do
    while current_loc <= matrix[current_matrix].length - 1 do
      if matrix[current_matrix][current_loc] == 0
        delta = current_loc
        delta_count = 0
        while delta_count <= matrix[current_matrix].length - 1 do
          matrix[current_matrix][delta_count] = 0
          delta_count += 1
        end
        delta_count = 0
        while delta_count <= matrix.length - 1 do
          matrix[delta_count][delta] = 0
          delta_count += 1
        end
        current_loc += 1
      else
        current_loc += 1
      end
    end
    current_matrix += 1
    current_loc = 0
  end

  return matrix
end
