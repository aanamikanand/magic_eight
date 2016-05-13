@original_answers = [ "This is Cool", "I am not going to answer that", "If you say so", "Really", "My name is Ghost! Run as fast as you can", "Are you going to party", "Don't worry I am tired", "Is this a Question", "I am sick of your Question", "Get lost" ]
@add_answers=[ "This is Cool", "I am not going to answer that", "If you say so", "Really", "My name is Ghost! Run as fast as you can", "Are you going to party", "Don't worry I am tired", "Is this a Question", "I am sick of your Question", "Get lost" ]
#have 1 array that is original 
#clone that array
#use cloned array
#when you reset re clone array

def questions
	while true
	
		puts "Type a Question to get an answer, or type QUIT to end the program."
		first_question = gets.strip.upcase




		if first_question != "QUIT"

		  puts @add_answers.sample

		else

			puts "Thanks for asking the Magic Ball. Please play again!"

			exit(0)

		end

	end

end

def another_answer
	puts "Enter the answer you want to add"
	@add_answers.push(gets.strip)
	menu
end

def reset
	puts "It will Reset the Answers"

		if @original_answers == @add_answers
			puts "Reset not required. There is no Change."
			another_answer
		else
			puts "Reset Done"
			@add_answers = @original_answers
			
		end
		menu

end

def print

	puts "Lists of Answers"
		@add_answers.each do |num|
		puts num
		end	
	menu
end

def menu

	puts "Type 1 to Ask Question, type 2 to Add Answer, type 3 to Reset and type 4 to Print"

	user_asks=gets.strip

	if user_asks == "1"
		questions

	elsif user_asks == "2"
		another_answer

	elsif user_asks == "3"
		reset

	elsif user_asks == "4"
		print

	else

		puts "Bad User. Good Bye!"

		exit(0)

	end


end

menu
another_answer
reset