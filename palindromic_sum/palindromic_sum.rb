# Instructions
# A palindrome is any number, word, or phrase that reads the same forward as it does backward. In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.

# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000.

# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.

# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.

# Bonus: Once you’ve found a working solution, see if you can create a solution without converting the numbers to strings/arrays.

# Understand 
# What is the data set that we're working with? Array? Range?
# Safe to assume we'll always be working with integers?
# What ruby method can I use to limit the results to 25?

# Match
# .to_s  to convert integer to string
# .reverse to reverse string
# .to_i to convert string to integer

# Plan/Pseudocode
# First, we need to create an array/range of numbers to work with
# Triple digit threshold.
# Create an empty array to store the results? Possibly not necessary if using select enumerable
# [0..1000].each do |num|?
# select enumerable?
# add comditional logic to select only numbers that are greater than first triple digit number
# convert each number to a string and set to a variable
# reverse that string and set to a variable
# add those two variables together and see if they meet the condition of being greater than 1000 && a palindrome
# if they do, add them to an array

def palindromic_numbers
  results = []

  (0..10000).each do |num|
    if num >= 209
      num_string = num.to_s
      num_string_reverse = num_string.reverse

      sum = num_string_reverse.to_i + num

      palindrome = sum.to_s == sum.to_s.reverse

      if num_string_reverse.to_i + num > 1000 && palindrome
        results << num
      end
    end
  end
  results.first(25)
end

p palindromic_numbers

# Next Palindrome
# Instructions
# A palindrome is any number, word, or phrase that reads the same forward as it does backward. 
# In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.
# Your goal is to write a method/function that takes in an integer and returns the next palindrome. 
# It is safe to assume you are working with only whole numbers, no decimals, and no negatives.


def find_next_palindrome(num)
  num += 1

  until num.to_s == num.to_s.reverse
    num += 1
  end
  num
end

# result = find_next_palindrome(102)
# result_2 = find_next_palindrome(1203)

# p result
# p result_2