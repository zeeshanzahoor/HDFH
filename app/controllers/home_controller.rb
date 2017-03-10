class HomeController < ApplicationController
  def index
    leaguename = params[:leaguename]
    pageindex = params[:page]
    pageindex = 0 unless pageindex
    if leaguename
      league = Competition.where(:CanonicalName => leaguename).first()
      if league
       @Matches = league.matches.offset(pageindex*1).limit(1)
      end
    else
      @Matches = Match.offset(pageindex*1).take(1)
    end
    if request.xhr?
      render "loadmoreIndex", :layout=> false
    end
  end
  def loadmoreIndex
    leaguename = params[:leaguename]
    @Matches = Match.take(1)
    if request.xhr?
      render :layout=> false
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
