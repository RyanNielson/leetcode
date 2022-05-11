# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index.with_object({}) do |(num, i), memo|
    n = target - num
    break [memo[n], i] if memo.include?(n)

    memo[num] = i
  end
end
