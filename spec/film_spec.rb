require 'film'

describe Film do
  it 'should show parameters' do
    file_path = __dir__ + "/fixtures/01.txt"

    film = Film.new(file_path)

    expect(film.title).to eq("Робокоп")
    expect(film.director).to eq("Пол Верховен")
    expect(film.year).to eq("1987")
  end
end
