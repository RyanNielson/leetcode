# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left_i = 0
  right_i = height.length - 1
  max = 0

  loop do
    left = height[left_i]
    right = height[right_i]

    new_max = [left, right].min * (right_i - left_i)
    max = new_max if new_max > max

    if right <= left
      right_i -= 1
    else
      left_i += 1
    end

    break unless left_i < right_i
  end

  max
end
