class Video < ApplicationRecord
    belongs_to:Match, {:foreign_key=>"Match_Id"}
end
