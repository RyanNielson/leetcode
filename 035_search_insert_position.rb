# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  # TODO: Implement binary search myself
  nums.bsearch_index { |n| n >= target } || nums.count
end
