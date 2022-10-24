class Admin::GenresController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def index
    @genres = Genre.all
  end

  def edit
    @genre = find_genre
  end

  def create
    @genre = Genre.new
    if @genre.update(genre_params)
      flash.notice = 'Success'
      redirect_to admin_genres_path
    else
      render :edit
    end
  end

  def update
    @genre = find_genre

    if @genre.update(genre_params)
      flash.notice = 'Success'
      redirect_to admin_genres_path
    else
      render :edit
    end
  end

  def destroy
    @genre = find_genre
    if @genre.movies.count > 0
      flash[:alert] = 'Удаление невозможно: Имеются фильмы с данным жанром'
      return redirect_to admin_genres_path
    end

    if @genre.destroy
      flash[:alert] = "Жанр #{@genre.name} Удален"
      redirect_to admin_genres_path
    end
  end

  def new
    @genre = Genre.new
  end

  private

  def find_genre
    Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
