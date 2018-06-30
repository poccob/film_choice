class Input
  def initialize(all_directors_uniq)
    @user_input #= nil

    puts "Фильм какого режиссера вы хотите сегодня посмотреть?"
    user_input = STDIN.gets.encode("UTF-8").chomp.to_i

    while (user_input > all_directors_uniq.size) ||
          (user_input < 0) || (user_input == 0)
      user_input = STDIN.gets.encode("UTF-8").chomp.to_i
    end
    @user_input = user_input
  end

  def user_input
    @user_input
  end
end

