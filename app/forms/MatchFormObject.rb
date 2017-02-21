class MatchFormObject
    include ActiveModel::Model

    attr_accessor :id, :HomeTeamId,:CompetitionId, :AwayTeamId, :Score, :CoverPicture, :DatePlayed, :Status
    attr_accessor :VideoTitle, :VideoUrl
    validates :HomeTeamId, :presence => true
    
    @Match

    def initialize(match)
        if match
            @Match = match
            @id = match.id
            @Score = match.Score
            @HomeTeamId = match.HomeTeamId
            @CompetitionId = match.CompetitionId
            @AwayTeamId = match.AwayTeamId
            @DatePlayed = match.DatePlayed
            if match.Videos.size > 0
                @VideoTitle = match.Videos[0].Title
                @VideoUrl = match.Videos[0].Url
            end 
        end
    end

    def Update(params)
        if !@Match
            @Match = Match.new            
        end
        @Match.CompetitionId = params[:CompetitionId]
        @Match.HomeTeamId = params[:HomeTeamId]
        @Match.AwayTeamId = params[:AwayTeamId]
        @Match.Score = params[:Score]
        @Match.DatePlayed = params[:DatePlayed]
        @Match.save
    end
    
    def persisted?
    false
    end
    def self.model_name
    ActiveModel::Name.new(self, nil, "Match")
    end
end