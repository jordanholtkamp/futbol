require_relative 'test_helper'
require './lib/game_team_collection'
require './lib/stat_tracker'

class GameTeamCollectionTest < Minitest::Test

  def setup
    @game_team_collection= GameTeamCollection.new("./test/test_game_team_data.csv")
  end

  def test_count_of_teams
    assert_equal 11, @game_team_collection.count_of_teams
  end

  def test_home_games
    # expected = {6=>1, 5=>1, 16=>2, 17=>4, 9=>1, 19=>1, 24=>2, 2=>1, 3=>2, 26=>1}
    assert_equal 16, @game_team_collection.home_games.values.sum
  end

  def test_home_wins
    assert_equal 10, @game_team_collection.home_wins.values.sum
  end

  def test_away_games
    assert_equal 10, @game_team_collection.away_games.values.sum
  end
  def test_away_wins
    assert_equal 3, @game_team_collection.away_wins.values.sum
  end

  def test_home_win_percentage
    assert_equal 50.0, @game_team_collection.home_win_percentage[24]
  end

  def test_away_win_percentage
    assert_equal 100.0, @game_team_collection.away_win_percentage[16]
  end

  def test_best_fans
    assert_equal 6, @game_team_collection.best_fans
  end

  def test_worst_fans
    assert_equal [16], @game_team_collection.worst_fans
  end
end
