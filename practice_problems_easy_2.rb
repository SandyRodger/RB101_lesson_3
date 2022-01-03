# 1

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# # ages.select do |k, v|
# # 	if v == "spot" 
# # 		puts "Spot is present" 
# # 	else 
# # 		puts "no spot"
# # 	end
# # end

# # or

# # puts ages.key?("spot")          => same a has_key?

# # or

# # puts ages.slice("spot")    => Nope

# # LS solution:

# # puts ages.include?("spot")

# # or

# puts ages.member?("spot")

# 2 a) I just cannot get this to priunt on one line! I will look at the solution.

# munsters_description = "The Munsters are creepy in a good way."

# def invert_cases(string)
# 	string.each_char do |c|
# 		arr=[]
# 		if c == c.downcase
# 		arr << c.upcase!
# 		else
# 		arr << c.downcase!
# 		end
# 		puts arr.join
# 	end
# end

# invert_cases(munsters_description)

# Attempt n2: Nailed it!!!!!!!!

# munsters_description = "The Munsters are creepy in a good way."

# puts munsters_description.gsub(/./) {|l| l == l.upcase ? l.downcase : l.upcase}

# LS solution:

# puts munsters_description.swapcase!

#2 b) Easy

# munsters_description = "The Munsters are creepy in a good way."
# empty_string = ""
# munsters_description.each_char {|c|empty_string<<c.downcase}
# empty_string.capitalize!
# puts empty_string

# LS solution: munsters_description.capitalize!

# 2 c) Super easy
# munsters_description = "The Munsters are creepy in a good way."
# puts munsters_description.downcase

# LS solution: same as mine

#  2 d) Super duper easy
# munsters_description = "The Munsters are creepy in a good way."
# puts munsters_description.upcase

# LS solution: same as mine

# 3 

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# # ages ["Marylin"] = 32 
# # ages ["Spot"] = 237

# # LS solution:

# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# ages.merge!(additional_ages)
# puts ages

# 4 

# advice = "Few things in life are as important as house training your pet dinosaur."
# puts advice.include?"Dino"

# LS solution:

# advice.match?("Dino")

# 5 LS solution same as mine!

# flintstones = %w(red, Barney, Wilma, Betty, BamBam, Pebbles)

# 6 LS solution same as mine

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# p flintstones

# 7

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # flintstones << (%w(Dino Hoppy))
# # p flintstones

# # ls solution:  I didn't think concat is so different from <<, but here it's doing something different.

# # flintstones.push("Dino").push("Hoppy")   
# # p flintstones

# # or 

# flintstones.concat(%w(Dino Hoppy))  
# p flintstones

# 8 

# advice = "Few things in life are as important as house training your pet dinosaur."

# advice.slice!("Few things in life are as important as ")

# puts advice

# LS solution:

# advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
# p advice                                 # => "house training your pet dinosaur."

# 9 

# statement = "The Flintstones Rock!"
# statement.count "t"

# LS solutipon same as mine

# 10 LS solution same as mine.

title = "Flintstone Family Members"
puts title.center(40)
