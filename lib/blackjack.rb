require 'pry' 

def welcome
  puts "Welcome to the Blackjack Table."
end

def deal_card 
  rand(1..11)
  end 

def card_total
  total = deal_card + deal_card
end

def display_card_total (card_total)
 puts "Your cards add up to #{card_total}"
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp 
  store prompt_user
end

def end_game (card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def invalid_command
puts "Please enter a valid command" 
end

def initial_round 
  deal_card
  deal_card  
  card_total = deal_card + deal_card
  display_card_total (card_total)
  return card_total
end


def hit? (card_total)
  binding.pry
  card_total = initial_round
  prompt_user
  get_user_input
  case get_user_input
  when get_user_input = s 
   return display_card_total (card_total)
  when get_user_input = h
   deal_card
   new_card_total = card_total + deal_card
    return display_card_total (new_card_total)
  else 
   invalid_command
 end
    prompt_user
  end




#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
initial_round
  loop do 
  hit?
  until card_total > 21 
  end_game
end

end
end

initial_round
hit?