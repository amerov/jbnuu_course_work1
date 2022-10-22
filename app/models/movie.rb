class Movie < ApplicationRecord
  # Фильм имеет опорную таблицу
  has_many :genre_movies

  # Фильм имеет множество жанров
  has_many :genres, through: :genre_movies

  # Фильм имеет множество слотов в рассписании
  has_many :timeslots

  # Валидация обязательных арртибутов
  validates :name, :name_ru, :description, :min_age, :duration_min, :rating, presence: true
end
