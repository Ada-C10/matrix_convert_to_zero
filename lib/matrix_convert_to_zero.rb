# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.


def matrix_convert_to_0(matrix)
  zeros_array = []

  matrix.each.with_index do |row, i|
    # print "before #{row} \n"
    row.each.with_index do |num, index|
      if num == 0
        zeros_array << index
        matrix[i] = Array.new(row.length, 0)

      end

    end
    # print "after #{row} \n"
  end
  zeros_array.each do |ele|
    matrix.each do |row|
      row[ele] = 0

    end
  end
  return matrix
end


# time complexity = On^2 + On^2 two nested loops
# space complexity = constant? O(1): needs one a temp vari
