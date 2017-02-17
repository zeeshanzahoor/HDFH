class Competition < ApplicationRecord
  has_many :matches , {:foreign_key => "CompetitionId"}
end
