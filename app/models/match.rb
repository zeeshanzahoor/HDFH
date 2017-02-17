class Match < ApplicationRecord
  belongs_to :HomeTeam, {:foreign_key=> "HomeTeamId", class_name: "Team" }
  belongs_to :competition, {:foreign_key => "CompetitionId"}
  belongs_to :AwayTeam, {:foreign_key=> "AwayTeamId",class_name: "Team"  }
end
