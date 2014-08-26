class SessionsController < ApplicationController
  def index
    @movies = Movie.all.order("year DESC")
  end
end