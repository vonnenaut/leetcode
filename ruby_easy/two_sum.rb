def two_sum(nums, target)
  sum = 0

  nums.each_with_index do |val1, idx1|
    nums.each_with_index do |val2, idx2|
      return [idx1, idx2] if (val1 + val2 == target) && (idx1 != idx2)
    end
  end
end

p two_sum([1, 2, 3, 4], 5) == [0, 3]
p two_sum([1, 2, 3], 5) == [1, 2]
p two_sum([2, 4, 5], 6) == [0, 1]
p two_sum([3, 3], 6) #== [0, 1]

