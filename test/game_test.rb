require_relative 'test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'

class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new({})
    assert_instance_of Game, game
  end

  def test_it_has_attributes
    game = Game.new({game_id: "1",
                     season: "20122013",
                     away_team_id: '3',
                     home_team_id: "2",
                     away_goals: "1",
                     home_goals: "2"
                     })

    assert_equal "1", game.game_id
    assert_equal "20122013", game.season
    assert_equal "3", game.away_team_id
    assert_equal "2", game.home_team_id
    assert_equal 1, game.away_goals
    assert_equal 2, game.home_goals
  end

end
