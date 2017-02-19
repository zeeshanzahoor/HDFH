class AdminController < ApplicationController
  layout "admin"
  def index

  end

  def login

  end

  def logout

  end

  def matches
    leaguename = params[:id]
    if leaguename
      league = Competition.where(:CanonicalName => leaguename).first()
      if league
       @Matches = league.matches
      end
    else
      @Matches = Match.all()
    end
  end

  def competitions
    @Competitions = Competition.all()
  end

  def teams

  end

  def editmatch
    if request.post?

      @match = Match.new  
      @match.Videos.build
    else
      id = params[:id]
    if id
      @match = Match.find(id)
    else
      @match = Match.new
    end
    @match.Videos.build
    end
    
  end
end
