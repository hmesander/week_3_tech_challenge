require 'pry'

def snail(array_matrix)
  ans_array = []
  r = 0
  n = array_matrix[0].length - 1
  row_count = 0
  collum_count = n
  ans_array << array_matrix[r]
  row_count += 1
  r += 1

  until (r - 1) >= n
    ans_array << array_matrix[r][n]
    r += 1
  end
  collum_count -= 1

  r -= 1
  until n <= 0
    ans_array << array_matrix[r][n - 1]
    n -= 1
  end

  until r == row_count
    ans_array << array_matrix[r - 1][n]
    r -= 1
  end

  n += 1
  until n > collum_count
    ans_array << array_matrix[r][n]
    n += 1
  end

  ans_array.flatten
end


print snail([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]])
