class AuctionsController < ApplicationController

  before_action :authorize, only: [:index]

  def index
    @response = HTTParty.get('http://www.omdbapi.com/?i=tt3896198&apikey=2f3bbb74')
    render :index
  end
  

end