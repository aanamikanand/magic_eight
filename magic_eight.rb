 
def questions
	while true

		puts "Type a Question to get an answer, or type QUIT to end the program."
		first_question = gets.strip.upcase

		add_answers=[ "This is Cool", "I am not going to answer that", "If you say so", "Really", "My name is Ghost! Run as fast as you can", "Are you going to party", "Don't worry I am tired", "Is this a Question", "I am sick of your Question", "Get lost" ]



		if first_question != "QUIT"

		  puts add_answers.sample

		else

			puts "Thanks for asking the Magic Ball. Please play again!"

			exit(0)

		end

	end

end

questions
