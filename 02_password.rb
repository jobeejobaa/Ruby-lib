 def signup
  puts "Choose your password:"
  print "> "
  password = gets.chomp 

  puts "Password selected !"
  return password
end

my_password = signup

  def login(stored_password)
  puts "Put your password"
  entered_password = "" 

  
  while entered_password != stored_password
    print "> "
    entered_password = gets.chomp
    if entered_password != stored_password
      puts "Wrong password, try again !"
    end
  end
  puts "Connexion succed"
end

def welcome_screen
  puts "Welcom to NSA secret"
  puts "There is no secret you fool!"
 
end


secret_password = signup 
login(secret_password)
welcome_screen 