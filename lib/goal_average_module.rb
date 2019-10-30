module GoalAverage

  def highest_scoring_visitor
    @teams.teams.find do |team|
       if @games.away_team_id_for_highest_average_goals.to_i == team.team_id
         return team.teamName
       end
     end
  end

  def lowest_scoring_visitor
    @teams.teams.find do |team|
      if @games.away_team_id_for_lowest_average_goals.to_i == team.team_id
        return team.teamName
      end
    end
  end
end
