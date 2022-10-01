# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  min_difference = 2.pow(31) - 1
  min_sum = 2.pow(31) - 1

  (0...nums.size).each do |i|
    j = i + 1
    k = nums.length - 1

    while j < k 
      sum = nums[i] + nums[j] + nums[k] 
      difference = sum - target

      if difference < 0
        j += 1
      elsif difference > 0
        k -= 1
      else
        return sum
      end

      if difference.abs < min_difference.abs
        min_difference = difference
        min_sum = sum
      end
    end
  end

  min_sum
end
