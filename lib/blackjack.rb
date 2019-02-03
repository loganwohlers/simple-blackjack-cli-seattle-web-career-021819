def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (total)
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game (num)
 puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  c1=deal_card
  c2=deal_card
  display_card_total(c1+c2)
end

def hit? (total)
 prompt_user
 input=get_user_input
 if input=='h'
   total+=deal_card
   return total
 elsif input=='s'
   return total
 else
   invalid_command
 end
 
   
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total=initial_round
  while total<=21
    total=hit?(total)
  end
end_game(total)
  
  
end
    
