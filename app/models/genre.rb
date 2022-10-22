class Genre < ApplicationRecord
  # Жанр имеет опорную таблицу "жанры-фильмы"
  has_many :genre_movies

  # Жанр имеет много фильмов
  has_many :movies, through: :genre_movies

  # Название жанра обязательно и не может дублироваться
  validates :name, presence: true, uniqueness: true
end
