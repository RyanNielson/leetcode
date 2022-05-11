# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1

  x = 0
  y = 0
  dx = 0
  dy = 1

  s.chars.each_with_object([]) do |char, memo|
    memo[y] = [] if memo[y].nil?
    memo[y][x] = char

    if y >= num_rows - 1
      dy = -1
      dx = 1
    elsif y <= 0
      dy = 1
      dx = 0
    end

    x += dx
    y += dy
  end.flatten.join
end
