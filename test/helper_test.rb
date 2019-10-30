require_relative 'test_helper'
require './lib/helper'
require './lib/stat_tracker'

class HelperTest < Minitest::Test
  def setup
  @stat_tracker = StatTracker.new("./test/dummy_game_data.csv", "./test/dummy_game_team_data.csv", "./test/dummy_team_data.csv")
  #   @fan = Fan.new("./test/dummy_game_team_data.csv", "./data/teams.csv")
  #   @game_teams = GameTeamCollection.new("./test/dummy_game_team_data.csv")
  #   @teams = TeamCollection.new("./data/teams.csv")
  end

  def test_it_can_create_game_teams
    assert_equal 6, @game_teams.game_teams[0].team_id
  end

  def test_it_can_create_teams
    assert_equal "DC United", @teams.teams[3].teamName
  end

  def test_best_fans_team_id
    assert_equal 6, @stat_tracker.best_fans_team_id
  end

  def test_best_fans
    assert_equal "FC Dallas", @stat_tracker.best_fans
  end

  def test_worst_fans_team_id
    assert_equal [16, 6, 9, 19, 24], @stat_tracker.worst_fans_team_id
  end

  def test_worst_fans
    assert_equal ["FC Dallas", "New England Revolution", "New York City FC", "Philadelphia Union", "Real Salt Lake"], @stat_tracker.worst_fans
  end

  def test_winningest_team
    assert_equal "New England Revolution", @stat_tracker.winningest_team_name
  end

end
