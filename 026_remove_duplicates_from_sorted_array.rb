# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  uniques = nums.uniq
  nums.unshift(*uniques)
  uniques.count
end
