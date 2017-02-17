class Team < ApplicationRecord
  has_many :HomeMatches, {:foreign_key=> "HomeTeamId",class_name: "Match" }
  has_many :AwayMatches, {:foreign_key=> "AwayTeamId",class_name: "Match" }
end
