

module Helper

  def winningest_team
    most_wins_team = @teams.teams.find do |team|
      team.team_id == @game_teams.winningest_team_id
      end
    most_wins_team.teamName
  end

  def best_fans_team_id
    diff = @game_teams.home_win_percentage.merge(@game_teams.away_win_percentage) do |key, home_win_percent, away_win_percent|
      (home_win_percent - away_win_percent)
    end
      best = diff.max_by do |team|
        team.last
      end
      best.first
  end

  def best_fans
      best_fans_team = @teams.teams.find do |team|
        team.team_id == best_fans_team_id
      end
      best_fans_team.teamName
  end

  def worst_fans_team_id
      diff = @game_teams.away_wins.merge(@game_teams.home_wins) do |key, away_wins, home_wins|
        away_wins - home_wins
      end
      positives = diff.find_all { |gt| gt.last > 0 }
      positives.map { |array| array.first }
  end

  def worst_fans
    worst_fans_teams = @teams.teams.find_all do |team|
      worst_fans_team_id.include?(team.team_id)
    end
    worst_fans_teams.map do |team|
      team.teamName
    end
  end
end
