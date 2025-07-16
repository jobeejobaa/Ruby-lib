def half_pyramid
    puts "Salut, bienvenue dans ma pyramide ! Combien d'étages veux-tu ?"
print ">"
etage = gets.to_i

while etage > 25 || etage < 1 do
puts "pas content" 
  etage = gets.to_i
end
half_pyramid = []

(1..etage).each do |i| 
  ligne = '#' * (2 * i - 1) 
  half_pyramid << ligne 
end

half_pyramid.each do |ligne|
  puts ligne
end
end

half_pyramid


def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"
etage = gets.to_i

while etage > 25 || etage < 1 do
puts "pas content" 
  etage = gets.to_i
end
full_pyramid = []

(1..etage).each do |i| 
  ligne = ' ' * (etage - i) + '#' * (2 * i - 1) 
  full_pyramid << ligne 
end

full_pyramid.each do |ligne|
  puts ligne
end
end

full_pyramid



def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (entre 1 et 25) ?"
  print "> "
  etage = gets.to_i

  # Input validation loop
  while etage > 25 || etage < 1
    puts "Le nombre d'étages doit être entre 1 et 25. Essaie encore :"
    print "> "
    etage = gets.to_i
  end

  puts "Voici ta pyramide :"

  # Build and print the top half of the pyramid (including the widest part)
  (1..etage).each do |i|
    spaces = ' ' * (etage - i)
    hashes = '#' * (2 * i - 1)
    puts spaces + hashes
  end

  # Build and print the bottom half of the pyramid (excluding the widest part)
  (etage - 1).downto(1) do |i| # Iterate downwards from etage-1 to 1
    spaces = ' ' * (etage - i)
    hashes = '#' * (2 * i - 1)
    puts spaces + hashes
  end
end

# Call the method to run the program
wtf_pyramid