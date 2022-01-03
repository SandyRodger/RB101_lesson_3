# 1

# string = "The Flintstones Rock!"
# num = 10

# loop do
# 	puts string
# 	string.prepend(" ")
# 	num -= 1
# 	break if num == 1
# end

# # LS solution:

# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# 2 

# puts "the value of 40 + 2 is " + (40 + 2)

# Possible solution 1:

# puts "the value of 40 + 2 is #{40 + 2}"

# Possible solution 2:

# puts "the value of 40 + 2 is ", (40 + 2)

#LS says: (40+2).to_s =>  even though this doesn't print the first string.

# 3 

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# rescue
# 	puts "this programme does not accept this number"
# end

# puts factors(0)

# LS solution:  I just put in a 'rescue', did i do it right?

# while divisor > 0 do
#   factors << number / divisor if number % divisor == 0
#   divisor -= 1
# end

# 4

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# rolling_buffer1("", 20, "ping")
# puts rolling_buffer1("", 20, "eagle")

# 5 This one was super easy


# def fib(first_num, second_num)
# 	limit = 15
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# 6 NAiled it!

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# 7 This will not mutate the original hash - wrong.  I need to revise this.

# 8 I think the result will be "rock" - wrong, it is paper

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# 9 I predict the result will be "yes" - wrong, it was "no", even though i checked twice (godammit)

def foo(param = "no")
  "yes"
end

def bar(param = "no")   #=> so this = no ids jsut a misdirection and parameters cannot reassign variables.
  param == "no" ? "yes" : "no"
end



