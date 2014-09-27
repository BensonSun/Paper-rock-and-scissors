puts "Play Paper Rock Scissors!"

#Step1-->Ask user to pick P/R/S
#Step2-->Save user's respone to a variable
#Step3-->Computer randomly chooses P/R/S and assign it to a variable
#Step4-->Print out what computer and user choose 
#Step5-->Compare the two variables to produce a result
  #Step5.1--> if variable1 equal to variable2 then print out it's a tie
	#Step5.1--> if variable1 equal to variable2 then print out it's a tie
#Step6-->Declare who the winner is
#Step6-->Ask if the user want to play again
a = "initial_value"
user_response = "initial_value"


loop do
  until (user_response == "P") || (user_response == "R") || (user_response == "S") 
    puts "Choose one (P/R/S)"
    user_response = gets.chomp.upcase
  end

  response_example = ["P", "R","S"]
  com_response = response_example.sample

  def extend(str)
    if str == "P"
      "Paper"
    elsif str == "R"
      "Rock"
    elsif str == "S"
      "Scissors"
    end
  end

  user_response = extend(user_response)
  com_response = extend(com_response)

  puts "You picked #{user_response} and computer picked #{com_response}!"

  if com_response == user_response
    puts "It's a tie."
  elsif com_response == "Rock" &&  user_response == "Scissors" 
    puts "Rock breaks Scissors!"
    puts "Computer wins!"
  elsif com_response == "Scissors" && user_response == "Paper" 
    puts "Scissors cut Paper!"
    puts "Computer wins!"
  elsif com_response == "Paper" && user_response == "Rock"
    puts "Paper wraps rock!"
    puts "Computer wins!"
  elsif user_response == "Rock" && com_response == "Scissors" 
    puts "Rock breaks Scissors!"
    puts "You win!"
  elsif user_response == "Scissors" && com_response == "Paper" 
    puts "Scissors cut Paper!"
    puts "You win!"
  elsif user_response == "Paper" && com_response == "Rock"
    puts "Paper wraps rock!"
    puts "You win!"
  end

  a = "initial_value"
  
  until (a == "N") || (a == "Y")
    puts "Do you want to play again? (Y/N)"
    a = gets.chomp.upcase
  end

  if a == "N"
    break
  end
end




