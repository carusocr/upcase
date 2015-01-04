#card1 = "cat|neko"
#card2 = "dog|inu"
cards = {"dog" => "inu",
          "cat" => "neko"}

#deck = [card1,card2]
card1.each do |front,back|
  print "#{front} > "
  guess = gets.chomp
  if guess == back
    puts "Correct."
  else
    puts "Wrong, it's #{back}!"
  end
end
#deck.each do |c|
#  card_parts = c.split("|")
#  front = card_parts[0]
#  back = card_parts[1]
#  print "#{front} > "
#  guess = gets.chomp
#  if guess == back
#    puts "Correct."
#  else
#    puts "Wrong, it's #{back}!"
#  end
#end
