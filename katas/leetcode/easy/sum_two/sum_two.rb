# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# https://leetcode.com/problems/two-sum/
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |val, idx|
    hash[val] = idx
  end
  # O(1)
  nums.each_with_index do |val, idx|
    new_value = target - val
    return [idx, hash[new_value]] if hash[new_value] && hash[new_value] != idx
  end
end
