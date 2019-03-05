require_relative '../config/environment'



puts "HELLO WORLD"
# greeting
# login_or_register
# get_username_and_password
# authenticate_user

def greeting
  puts "Hello, welcome to APP NAME!"
end

def login_or_register
  puts "please enter 0 if you would like to register or enter 1 if you would like to sign in."
  user_input = gets.chomp #gets input from user
  if user_input == 0
    User.register
  elsif user_input == 1
    User.login
  else
    puts "Invalid input. Please try again."
    login_or_register
  end
end

def menu

  puts "Please choose what you would like to do?
  01 New workout: new workout will be generated for you
  02 view stats: displays workouts done and total calories burnt
  03 update your profile: update your profile information
  04 update your weight
  05 update your fitness goal: choose between weight loss, muscle gain, or endurance
  06 create your own workout: log your exercises for your workout
  07 show all upper body workouts
  08 show all lower body workouts
  09 show all cardio workouts
  10 exit : exits this program"
  menu_options

end

def menu_options
  user_input = gets.chomp
  case user_input
  when 1
    #workout function
  when 2
    user_stats
  when 3
    #update profile function
  when 4
    #update weight
  when 5
    #update fitness goals
  when 6
    custom_workout
  when 7
    upper_body
  when 8
    lower_body
  when 9
    cardio
  when 10
    exit_app
  else
    puts "Invalid selection"
  end

end

def exit_app
  puts "Goodbye"
end

# def run
#   greeting
#   menu
# end
Workout.custom_workout 
