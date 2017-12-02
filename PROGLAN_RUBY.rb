BEGIN {
	# Print a notice that the program has started
	tab1 = "\t"
	puts "\n[RUBY START]"
	puts "\n"+tab1+"Range: 0 < INPUT < 10001\n"+tab1+"Type [STOP] to end the program\n\n"
}

END {
	# Print a notice that the program has ended
	puts "\n[RUBY END]"
}


# Loop while the user doesn't type STOP
loop do 

	# Ask for user input
	print tab1+"Input:"+tab1
	user_input = gets.chomp
	input = user_input.to_i

	# Check if user wants to end the program (STOP)
	break if user_input.downcase == "stop"

	# Check if input is within range (0 < input < 10001)
	if input > 0 && input <= 10001

		# Initialize values
		exponent = -1
		product = 0

		# Loop while product is less than input
		while product < input
			exponent += 1
			product = 2**exponent
		end

		# Print the output
		puts tab1+"Output:"+tab1+"#{exponent} \n\n"
	end
end 
