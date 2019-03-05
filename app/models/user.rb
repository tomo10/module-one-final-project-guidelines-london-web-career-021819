class User < ActiveRecord::Base
  has_many :user_workouts
  has_many :workouts, through: :user_workouts

  #this method registers the user on the application
    def self.register
      puts "Please enter a username: "
      username = gets.chomp #get username
      puts "Please enter a password: "
      password = gets.chomp
      username_check = User.all.find_by(username: username) #check if user already exists
      if username_check != nil
        puts "That username already exists. Please try another username."
        User.register
      else
        user = User.new(username: username, password: password, last_login: datetime)
        puts "Sucess! You are now registered!"
      end
    end

#this method logs in an existing user
  def self.login
    puts "Please enter your username: "
    username = gets.chomp #get username
    puts "Please enter your password: "
    password = gets.chomp
    auth = authenticate_username(username)
    if auth == nil
      puts "User does not exist! Please try again"
      login
    else
      user = authenticate_password(username, password)
      if user == nil
        puts "Incorrect password. Please try again."
        login
      else
        puts "Login sucess!"
        user.last_login = datetime #update last login time
        return user
      end
    end
  end

#this method checks if the username exists
  def self.authenticate_username(username)
    User.all.find_by(username: username)
  end
#this method checks if the password matches for an existing username
  def self.authenticate_password(username, password)
    User.all.find_by(username: username, password: password)
  end

#this method gets/updates the weight of the user
  def update_weight
    puts "Please enter your weight: "
    weight = gets.chomp
    self.weight = weight
  end

#this method gets/updates the fitness goal of the user
  def update_goal
    puts "What is your fitness goal (weight loss, muscle gain, or endurance)? Please choose one. "
    goal = gets.chomp
    self.goal = goal
  end

  #this method gets/updates all of the user attributes.
  def update_user_data
    puts "Please enter your age: "
    age = gets.chomp
    self.age = age
    puts "Please enter your gender: "
    gender = gets.chomp
    self.gender = gender
    update_goal
    update_weight
  end


  def user_stats
    #puts user info (goal, weight)
    #puts all the workouts associated with our user
    #puts total calories burnt per workout
    #total calories burnt
    #
  end


end
