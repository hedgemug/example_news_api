class ArticlesController < ApplicationController

  def index
    response = Unirest.get("https://newsapi.org/v2/everything?q=#{params[:search_term]}&apiKey=#{ENV['API_KEY']}")
    render json: response.body
  end

end
