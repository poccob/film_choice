class Film
  attr_reader :title, :director, :year

  def initialize(file_path)
    if File.exist?(file_path)
      f = File.new(file_path, "r:UTF-8")
      film = f.readlines
      f.close
      @title = film[0].chomp
      @director = film[1].chomp
      @year = film[2].chomp
    else
      puts "[Файл не найден]"
    end
  end
end
