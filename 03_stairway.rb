def play_game
  current_step = 1 # Player starts at the first step
  turns = 0        # Keep track of how many turns it takes

  puts "Bienvenue au jeu de l'escalier ! Atteignez la 10ème marche pour gagner !"
  puts "Vous êtes à la marche #{current_step}."

  while current_step < 10
    turns += 1
    dice_roll = rand(1..6) # Simulate rolling a 6-sided die

    puts "-Tour #{turns} Vous lancez le dé... Vous faites un #{dice_roll} !"

    if dice_roll == 5 || dice_roll == 6
      current_step += 1
      puts "Bravo ! Vous montez d'une marche."
    elsif dice_roll == 1
      current_step = [1, current_step - 1].max # Ensure player doesn't go below step 1
      puts "Ouch ! Vous descendez d'une marche."
    else # dice_roll is 2, 3, or 4
      puts "Rien ne se passe. Quelle déception !"
    end

    puts "Vous êtes maintenant à la marche #{current_step}."

    # Special message for winning
    if current_step >= 10
      puts "\nFÉLICITATIONS !!! VOUS AVEZ ATTEINT LA 10ÈME MARCHE ET GAGNÉ LE JEU EN #{turns} TOURS !"
    end
  end
  return turns # Return the number of turns taken for statistics
end

play_game