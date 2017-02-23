class HomeController < ApplicationController
  def index
    leaguename = params[:leaguename]
    if leaguename
      league = Competition.where(:CanonicalName => leaguename).first()
      if league
       @Matches = league.matches
      end
    else
      @Matches = Match.take(10)
    end

  end
  def play
    @team1 = params[:team1]
    @team2 = params[:team2]
    league = Competition.where(:CanonicalName => "la-liga").first()
    @Matches = league.matches.take(8)
    # ActiveSupport::Inflector.transliterate('aäoöuü')

  end
end
