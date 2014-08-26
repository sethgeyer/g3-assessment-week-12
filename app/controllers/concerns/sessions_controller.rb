class SessionsController < ApplicationController
  def index
    @movies = Movie.all
  end
end