BEGIN {
	puts "[RUBY START]"
}

END {
	puts "[RUBY END]"
}


user_input = 1;
condition = user_input != "stop" && user_input.to_i > 0

while condition
	print "Input: "

	user_input = gets.chomp
	if !condition
		input = user_input.to_i
		exponent = -1
		product = 0

		while product < input
			exponent += 1
			product = 2**exponent
		end

		actual = Math.log2(input).ceil
		puts "Output: #{exponent}"
		puts "Actual: #{actual}"
	end
end
