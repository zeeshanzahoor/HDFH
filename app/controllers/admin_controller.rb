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
    if params[:id]
        m = Match.find(params[:id])
        @match = MatchFormObject.new(m)
    else
        @match = MatchFormObject.new(nil)
    end

  end
  def savematch
    if params[:id]
      m = Match.find(params[:id])
      matchobj = MatchFormObject.new(m)
      myid =  matchobj.Update(params[:match])
      redirect_to :action => 'editmatch', :id => myid
    else
      matchobj = MatchFormObject.new(nil)
      myid =  matchobj.Update(params[:match])
      redirect_to :action => 'editmatch', :id => myid
    end

  end
end
