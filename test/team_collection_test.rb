require 'csv'
require './test/test_helper'
require './lib/team_collection'


class TeamsCollectionTest < Minitest::Test
  def setup
    @teams = TeamCollection.new("./test/dummy_team_data.csv")
  end

  def test_it_has_best_offense
    assert_equal "team name here", @teams.best_offense
  end

  def test_it_has_worst_offense
    assert_equal "team name here", @teams.worst_offense
  end

  def test_it_has_best_defense
    assert_equal "team name here", @teams.best_defense
  end


end
