class User < ActiveRecord::Base

  def register
    puts "Please enter a username:"
    username_input = gets.chomp
    #check if no one else has username
    puts "Please enter a password:"
    password_input = gets.chomp
    #create a new user instance.
    new_user = User.new(name: username_input, password: password_input)
    self.update_user_data
  end

  def self.login
    puts "Please enter your username: "
    #find_by username.
    username_input =gets.chomp
    #if user is not found puts "Username not found!"
    #if user is found:
    puts "Please enter your password: "
    password_input = gets.chomp
    #check if password matches
    #if password matches puts "Welcome #{username}!" return self (i.e. the current user instance)
    #if password doesnot match, "Incorrect password, please try again. password_input = get.chomp. (3 tries)
  end

  def update_user_data
    puts "Please enter your age: "
    age = gets.chomp
    self.age = age
    puts "Please enter your gender: "
    gender = gets.chomp
    self.gender = gender
    puts "Please enter your weight: "
    weight = gets.chomp
    self.weight = weight
    puts "Please enter your experience level (beginner, intermediate, or advanced): "
    exp_lvl = gets.chomp
    self.experience_level = exp_lvl
  end


  def create_new_workout
    puts "would you like to do a new workout? Please enter Y/N"
  #get.chomp
      if user_input.downcase == 'y'
        #find workout that matches the experience_level and day of the week. result needs to pull the workout ID that matches criteria
        UserWorkout.new(user_id: self, workout_id: result)
      elsif
        user_input.downcase == 'n'
        puts #return to main menu
      else
        puts "Invalid input"
        create_new_workout
      end
  end

  
