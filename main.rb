require_relative "lib/film"
require_relative "lib/input"

array_elements = Dir.glob("data/*")

all_directors = []
all_films = []
result_film = []

array_elements.each do |element|
  file_path = __dir__ + "/#{element}"
  film = Film.new(file_path)
  all_films.push(film.title, film.director, film.year)
  all_directors << film.director
end


puts "Программа 'Фильм на вечер'"
puts

all_directors.uniq.each_with_index { |director, i| puts "#{i + 1}. #{director}" }

input = Input.new(all_directors.uniq)

all_films.each_with_index do |element, index|
  result_film << all_films[index - 1] if all_films[index] == all_directors.uniq[input.user_input - 1]
end

puts "И сегодня вечером рекомендую посмотреть:"
puts all_directors.uniq[input.user_input - 1]
puts result_film.sample
