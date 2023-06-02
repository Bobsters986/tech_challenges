# Instructions
# In this challenge you are given an array of unique integers. 
# Your job is to return all the possible combinations of unique pairs (2 integers only).
# No duplicate pairs are allowed. Below are some examples:

  #Example 1
  # Input: [1, 2, 3, 4]
  # Output: [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]

# Understand
# Will there ever be negative integers? Safe to assume no strings or floats?

# Match
# Arrays, integers, nested arrays
# .each_with_index, .each, .map enumerables are enumerables that come to mind

# Plan/Pseudocode
# Create a method that takes an array of integers as an argument
# Create an empty array to store the pairs
# Iterate through the array with .each_with_index
# Create a nested loop that iterates through the array again
# Call .uniq on the array to remove duplicate pairs

def find_pairs(nums)
  pairs = []
  nums.each_with_index do |num, index|
    nums.each_with_index do |num2, index2|
       pairs << [num, num2] if index2 > index
    end
  end
  pairs
end

# def find_pairs(nums)
#   pairs = []

#   nums.each_with_index do |num1, index1|
#     (index1 + 1...nums.length).each do |index2|
#       num2 = nums[index2]
#       pairs << [num1, num2]
#     end
#   end
#   pairs
# end

# nums1 = [1, 2, 3, 4]
# nums2 = [1, 2, 3, 4, 5, 6]

# p find_pairs(nums1)
# p find_pairs(nums2)
