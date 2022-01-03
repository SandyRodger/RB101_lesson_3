# 1 Predict how the values and object ids will change throughout the flow of the code below:

# def fun_with_ids
#   a_outer = 42 																	# => a_outer = 42 / obj_id #1              (#1 = 85)
#   b_outer = "forty two" 												# => b_outer = "forty two" / obj_id #2     (#2 = 70245763434460)
#   c_outer = [42] 																 # => c_outer = [42] / obj_id #3           (#3 = 70245763434400)
#   d_outer = c_outer[0]                          # => d_outer = 42 / obj_id #4              (#4 = 85)

#   a_outer_id = a_outer.object_id # => 1
#   b_outer_id = b_outer.object_id # => 2
#   c_outer_id = c_outer.object_id # => 3
#   d_outer_id = d_outer.object_id # => 4

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
#   puts

#   1.times do
#     a_outer_inner_id = a_outer.object_id # => old (1)
#     b_outer_inner_id = b_outer.object_id # => old (2)
#     c_outer_inner_id = c_outer.object_id # => old (3)
#     d_outer_inner_id = d_outer.object_id # => old (4)

#     puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block." # => 1 , same        correct!
#     puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block." # => 2, same
#     puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block." # => 3, same
#     puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block." # => 4, same
#     puts

#     a_outer = 22 																											
#     b_outer = "thirty three"
#     c_outer = [44]
#     d_outer = c_outer[0]

#     puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."  # => 22, 1, 5                      correct (notwithstanding the initial error)
#     puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." # => "thirty three", 2, 6
#     puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." # => [44], 3, 7
#     puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." # => 44, 4, 8
#     puts


#     a_inner = a_outer
#     b_inner = b_outer
#     c_inner = c_outer
#     d_inner = c_inner[0]

#     a_inner_id = a_inner.object_id # => 9
#     b_inner_id = b_inner.object_id # => 10
#     c_inner_id = c_inner.object_id # => 11
#     d_inner_id = d_inner.object_id # => 12

#     puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."  # => 22, 9, 1                    incorrect - a careless miastake: they have the same object ids inside and outside the block
#     puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."  # => "thirty three", 10, 2
#     puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."  # => [44], 11, 3
#     puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."  # => 44, 12, 4
#     puts
#   end

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."  # => a_outer = 42 / obj_id #1 / 1                 incorrect: the outer variables have been reasssibgned by this point.
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."  # => b_outer = "forty two" / obj_id #2 / 2
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."   # => c_outer = [42] / obj_id #3 / 3
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."  # => d_outer = 42 / obj_id #4 / 4
#   puts

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" # => Here the 'rescue' function implies that the values withn the block will not be visible here. So "ugh ohhhhh"
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" # correct
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
# end

# fun_with_ids

# Christ that took a long time. Obvious once it's finished. I need to work on my mental stamina, because at the end I was making some dumb mistakes just because I was too worn out to see clearly.

# 2

# def fun_with_ids
#   a_outer = 42
#   b_outer = "forty two"
#   c_outer = [42]
#   d_outer = c_outer[0]

#   a_outer_id = a_outer.object_id
#   b_outer_id = b_outer.object_id
#   c_outer_id = c_outer.object_id
#   d_outer_id = d_outer.object_id

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."        # => 42 / 85
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."				 # => "forty two" / 70249068372880
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."				 # =>  [42] /  70249068372820
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."				 # => 42 / 85
#   puts

#   an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)


#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."  # => 42 / 85 / 85 ( because this variable reference cannot see the reassigned variables in the method)
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call." # => "forty two" / 70249068372880 / 70249068372880
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."  # =>  [42] /  70249068372820 /  70249068372820
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call."   # => 42 / 85 /  85
#   puts

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"  # => prompts the rescue command to kick in because the variable is not visible outside the method.
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts
# end


# def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

#   puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method."  # => 85    - same
#   puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."  # => 70249068372880   - all the same 
#   puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."  # => 70249068372820   - all the same 
#   puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method."  # => 85      - same
#   puts

#   a_outer = 22
#   b_outer = "thirty three"
#   c_outer = [44]
#   d_outer = c_outer[0]

#   puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # => 22 / 85 / new_id = 45
#   puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." # => "thirty three" / 70249068372880  / new_id_1 (70249068461040)
#   puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." # => [44] / 70249068372820 / new_id_2 (70249068460980)
#   puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." # => 44 / 85 / new_id_3 (89)
#   puts

#   a_inner = a_outer
#   b_inner = b_outer
#   c_inner = c_outer
#   d_inner = c_inner[0]

#   a_inner_id = a_inner.object_id
#   b_inner_id = b_inner.object_id
#   c_inner_id = c_inner.object_id
#   d_inner_id = d_inner.object_id

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)." # => 22 / 45 / 45
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)." # => "thirty three" / new_id_1 / new_id_1
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)." # => [44] / new_id_2 / new_id_2
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)." # => 44 / new_id_3 / new_id_3
#   puts
# end

# fun_with_ids

# 3 

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"    # => pumpkins
# puts "My array looks like this now: #{my_array}"      # => pumpkinsrutabaga

# 4 

# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)

# puts "My string looks like this now: #{my_string}" # => "pumpkinsrutabaga"
# puts "My array looks like this now: #{my_array}" # => "pumpkins"

# 5 

# def tricky_method(a_string_param, an_array_param)
#   a_string_param << "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# 6 

# def color_valid(color)
#   color == "blue" || color == "green"
# end

# puts color_valid("red")