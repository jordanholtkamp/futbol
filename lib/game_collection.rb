require_relative 'game'
require 'CSV'

class GameCollection
  attr_reader :games

  def initialize(csv_file_path)
    @games = create_games(csv_file_path)
  end

  def create_games(csv_file_path)
    csv = CSV.read("#{csv_file_path}", headers: true, header_converters: :symbol)
    games = csv.map do |row|
      require 'pry'; binding.pry
      Game.new(row)
    end
    games
  end
end
