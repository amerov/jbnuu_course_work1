class Admin::GenresController < ApplicationController
  layout 'admin'

  def index
    @genres = Genre.all
  end
end
