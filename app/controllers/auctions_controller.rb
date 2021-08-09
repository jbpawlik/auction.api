class AuctionsController < ApplicationController

  require 'title'

  before_action :authorize, only: [:index]

  def index
    # @response = HTTParty.get('http://www.omdbapi.com/?i=tt3896198&apikey=' + ENV["OMDB_API_KEY"])
    # @response = HTTParty.get('http://www.omdbapi.com/?s=rashomon&apikey=' + ENV["OMDB_API_KEY"])
    # response = HTTParty.get('http://www.omdbapi.com/?i=tt3896198&apikey=2f3bbb74&s=rashomon')
    # response = HTTParty.get('http://www.omdbapi.com/?i=tt3896198&apikey=2f3bbb74&s=rashomon', format: :plain)
    # JSON.parse response, symbolize_names: true

    # response = HTTParty.get('http://www.omdbapi.com/?i=tt3896198&apikey=2f3bbb74&s=rashomon')

    # puts 'HELLO THERE YES -----------'
    # puts response.body, response.code, response.message, response.headers.inspect

    title_instance = Title.new("Rashomon")
    @title_found = title_instance.title_find
    render :index
  end
end