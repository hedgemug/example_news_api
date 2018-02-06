require 'unirest'

while true
  system 'clear'
  puts "Enter search term: "
  search_term = gets.chomp
  response = Unirest.get("http://localhost:3000/articles?search_term=#{search_term}")
  articles = response.body['articles']
  articles.each do |article|
    puts "-" * 50
    puts article["title"]
    puts article["description"]
    puts article["url"]
  end
  puts "Press enter to continue or q to quit"
  input_choice = gets.chomp
  if input_choice == "q"
    break
  end
end