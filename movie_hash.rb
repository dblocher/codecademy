movies = {
   sotd: 4,
}

puts "Please select an action"
choice = gets.chomp

case choice
when 'add'
puts 'Please enter a movie title'
title = gets.chomp
if (movies[title.to_sym] == nil)
puts 'Please enter a movie rating (a number from 0 to 4)'
rating = gets.chomp
movies[title.to_sym] = rating.to_i
puts "Shit's been added, yo!"
else
    puts 'This movie title already exists, dingus!'
end
when 'update'
puts 'Which movie would you like to modify?'
title = gets.chomp
if (movies[title.to_sym] == nil)
   puts 'This movie is not in the collection, idiot.'
else
   puts 'Enter a new rating for your movie.'
   rating = gets.chomp
   movies[title.to_sym] = rating.to_i
   puts 'The rating for your movie has been updated!'
end
when 'display'
movies.each do |movie, rating|
puts "#{movie}: #{rating}"
end
when 'delete'
puts 'Please enter a title to be deleted.'
title = gets.chomp
if (movies[title.to_sym] == nil)
    puts 'Have you even seen the movies in there? Get it together. This movie is not on the list'
else
    movies.delete(title.to_sym)
    puts 'Movie has been removed from the list.'
end
else
    puts 'Error!'
end