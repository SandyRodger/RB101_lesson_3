#1 : correct

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# => 1,2,2,3

# 2

# !=  => I knew
# ! before something => I knew
# ! after something => I knew
# ? before something => I didn't know
# ? after something => I knew
# !! before something => I didn't know

# 3 Probably shouldn't have taken me so long

# advice = "Few things in life are as important as house training your pet dinosaur."
# # advice_as_array= advice.split 
# # advice_as_array.each do |word| 
# # 	if word == "important"
# # 		word.replace "urgent"
# # 	end
# # end

# # puts advice_as_array.join(" ")

# # LS solution:

# advice.gsub!('important', 'urgent')

# puts advice

# 4. easy

# 5.

# if (10..100).include?(42)
# 	puts true
# else 
# 	puts false
# end

# LS solution: 

# (10..100).cover?(42)

#6 

# famous_words = "seven years ago..."
# # famous_words.prepend("Four score and ")
# famous_words.insert(0, "Four score and ")
# puts famous_words

# LS solution:

# "Four score and" + famous_words

# or

# "Four score and " << famous_words

#7 Easy

# flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# p flintstones.flatten

# 8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

puts flintstones.assoc("Barney")
