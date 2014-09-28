#prs game
puts "Let's play Paper, Rock, and Scissors!"
CHOICE = {"p" => "Paper", "r" => "Rock", "s" => "Scissors"}

def compare(choice)
  if choice == 'p'
    puts 'Paper wraps rock!'
  elsif choice == 'r'
    puts 'Rock breaks scissors!'
  elsif choice == 's'
    puts 'Scissors cut paper!'
  end
end
   

loop do
  begin
    puts "Please chose p/r/s"
    user_choice = gets.chomp.downcase
  end until CHOICE.keys.include?(user_choice) 
  
  computer_choice = CHOICE.keys.sample

  puts "You picked #{CHOICE[user_choice]} and computer picked #{CHOICE[computer_choice]}!"

  if user_choice == computer_choice
    puts "It's a tie!"
  elsif (user_choice == 'p' && computer_choice == 'r') || (user_choice == 'r' && computer_choice == 's') || (user_choice == 's' && computer_choice == 'p')
    def compare(user_choice)
    puts "You won!"
  else
    def compare(computer_choice)
    puts "Computer won!"  
  end

  begin 
    puts "Do you want to play again? (Y/N)"
    w = gets.chomp.upcase
  end until w == "Y" || w == "N"

  if w == "N"
    break
  end
end