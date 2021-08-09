class AuctionsController < ApplicationController

  before_action :authorize, only: [:index]

  def index
    @response = HTTParty.get('http://www.omdbapi.com/?i=tt3896198&apikey=' + ENV["OMDB_API_KEY"])
    render :index
  end
  

end