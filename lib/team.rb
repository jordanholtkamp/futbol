class Team
  attr_reader :team_id, :franchiseId, :teamName, :abbreviation,
  :Stadium, :link, :team_games, :opponent_games

  def initialize(teams_info)
    @team_id = teams_info[:team_id].to_i
    @franchiseId = teams_info[:franchiseId].to_i
    @teamName = teams_info[:teamName]
    @abbreviation = teams_info[:abbreviation]
    @Stadium = teams_info[:Stadium]
    @link = teams_info[:link]
    @team_games = team_games
    @opponent_games = opponent_games
  end

  def average_goals_per_game
    goal = @team_games.sum do |game|
      game.goals
    end
      (goal / @team_games.length.to_f).round(2)
  end

  def average_goals_allowed_per_game
    goal = @opponent_games.sum do |game|
      game.goals
    end
    (goal / @opponent_games.length.to_f).round(2)
  end


end
