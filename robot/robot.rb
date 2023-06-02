# Instructions
# In this challenge, you are working with a computer simulation of a mobile robot. The robot moves on a plane, and its movements are described by a command string consisting of one or more of the following letters:

# G instructs the robot to move forward one step
# L instructs the robot to turn left
# R instructs the robot to turn right
# The robot CANNOT go backwards - poor robot. After running all of the movement commands, you want to know if the robot returns to its original starting location.

# EXAMPLE
#Ruby
# return_to_origin?("GRGRGRG")
# => true

#QUESTIONS
# How many steps can the robot take before it has to turn?
# Will the robot be taking a combination of left and right turns?
# Will the robot always have to take a step each time it turns?
# Can the robot take more than one step at a time?
# Can the robot move along the same path more than once?

# MATCH
# Test to see if the string can be reversed to determine if the robot has returned to its starting position
# A condition to ensure that the robot has taken at least 4 steps to make its square and then return to its starting position
# feels like I need to create a grid to place the robot on and then have the robot move around the grid
# reminds me of a project called battle ship where we had to create a grid and place ships on the grid

# PSEUDOCODE
# Create a method that takes a string as an argument
# Create a method that can track whether the robot has moved in a square and then returned to its starting position
# can check whether the string is a palindrome
# ensure that the robot takes the same number of steps each time before it turns and heads in a new direction

def return_to_origin?(string)
  if string.reverse == string
    true
  else
    false
  end
end

back_to_start = return_to_origin?("GRGRGRG")
back_to_start_2 = return_to_origin?("GLGLGLG")
not_back_to_start = return_to_origin?("GRGRGLG")

p back_to_start
p back_to_start_2
p not_back_to_start