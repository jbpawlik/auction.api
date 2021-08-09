class Title
  # include HTTParty

  def initialize(search)
    # p 'hello'

    @search = search
  end

  def title_find
    # p 'hello'
    # self.class.get('http://www.omdbapi.com/?i=tt3896198&apikey=2f3bbb74&s=rashomon')
    response = HTTParty.get('http://www.omdbapi.com/?i=tt3896198&apikey=2f3bbb74&s=rashomon')

    # puts "------ test -------"
    # puts JSON.parse(response.body)["Search"][0]["Title"]

    JSON.parse(response.body)["Search"][0]["Title"]
  end
end