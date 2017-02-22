class MatchFormObject
    require 'securerandom'
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
        extension = File.extname(params[:CoverPicture].original_filename)
        name = SecureRandom.uuid + extension
        directory = "public/Images"
        path = File.join(directory, name)
        puts(path)
        File.open(path, "wb") do |f|
          f.write(params[:CoverPicture].read)
        end


        @Match.CompetitionId = params[:CompetitionId]
        @Match.HomeTeamId = params[:HomeTeamId]
        @Match.AwayTeamId = params[:AwayTeamId]
        @Match.Score = params[:Score]
        @Match.DatePlayed = Date::civil(params['DatePlayed(1i)'].to_i, params['DatePlayed(2i)'].to_i,params['DatePlayed(3i)'].to_i)
        @Match.CoverPicture = name
        @Match.save

        if @Match.Videos.size == 0
          video = Video.new
          video.Title = params[:VideoTitle]
          video.Url = params[:VideoUrl]
          @Match.Videos.append(video)
        else
          video = @Match.Videos[0]
          video.Title = params[:VideoTitle]
          video.Url = params[:VideoUrl]
          video.save
        end
        return @Match.id
    end

    def persisted?
    false
    end
    def self.model_name
    ActiveModel::Name.new(self, nil, "Match")
    end
end
