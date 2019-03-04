require_relative '../config/environment'



puts "HELLO WORLD"


def greeting
  puts "Hello, welcome to APP NAME."
end

def get_signin_info
  puts "please enter 0 if you would like to register or enter 1 if you would like to sign in."
  user_input = gets.chomp
  if user_input == 0
    User.register
  elsif user_input == 1
    User.login
  else
    "invalid input."
    get_signin_info
  end
end

def
