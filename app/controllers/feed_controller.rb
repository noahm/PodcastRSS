class FeedController < ApplicationController
  # /feed
  # /feed.rss
  def index
    @episodes = Episode.all
    
    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.rss { render rss: @episodes }
    #end
  end
  
end
