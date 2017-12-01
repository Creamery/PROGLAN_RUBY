BEGIN {
	puts "[RUBY START]"
}

END {
	puts "[RUBY END]"

}

print "Number of PRINT statements: "

user_input = gets.chomp.to_i
user_input = Math.log2(user_input).ceil

puts "Output: #{user_input}"




