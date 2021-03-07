# in-progress
# @param {Integer[]} data
# @return {Integer}
def min_swaps(data)
    if data.count(1) == 1
      return 0
    elsif data.count(1) == 2
      return 1
    end

    start_idx = data.find { |value| value == 1 }
    end_idx = data.rindex { |value| value == 1 }
    subarray = data.slice(start_idx, end_idx-start_idx)
    
    subarray.count(0)  
end

puts min_swaps([1, 0, 0, 0]) == 0
puts min_swaps([1, 0, 1, 0]) == 1
puts min_swaps([1, 0, 1, 0, 1]) == 2
puts min_swaps([1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1]) == 3
