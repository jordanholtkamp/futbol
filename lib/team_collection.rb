require_relative 'team'
require_relative 'game_team'
require 'CSV'

class TeamCollection
  attr_reader :teams

  def initialize(csv_file_path)
    @teams = create_teams(csv_file_path)
  end

  def create_teams(csv_file_path)
    csv = CSV.foreach("#{csv_file_path}", headers: true, header_converters: :symbol)

    csv.map { |row| Team.new(row) }
  end

  def best_offense
    @teams.max_by { |team| team.average_goals_per_game }
  end

  def worst_offense
    @teams.min_by { |team| team.average_goals_per_game }
    end #Do I need .teamName after end? I am only getting "nil" to return
  end

  def best_defense
    @teams.min_by { |team| team.average_goals_allowed_per_game }
  end
