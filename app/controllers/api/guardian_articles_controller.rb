class Api::GuardianArticlesController < ApplicationController
  def index
    search = params[:search]
    @articles = HTTP.get("https://content.guardianapis.com/search?q=#{search}&api-key=#{ENV["api_key"]}").parse["response"]["results"]
    render 'index.json.jbuilder'
  end
end
