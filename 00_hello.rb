def say_hello
  puts "Hello"    
end

say_hello

def say_hello
 first_name = "Johanna" 
puts "Hello, #{first_name}" 
  
end

say_hello

def ask_name
    puts "What is your name?"
    first_name = gets.chomp
    return first_name
end

def say_hello(first_name)
 puts "Hello, #{first_name}" 
end

    name = ask_name
    say_hello(name)


