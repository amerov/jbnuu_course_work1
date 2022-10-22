class Hall < ApplicationRecord
  # Зал имеет множество слотов рассписания
  has_many :timeslots

  # Зал имеет множество фильмов через связь слотов рассписаний
  has_many :movies, through: :timeslots

  # Название зала обязательно и должно быть уникальным
  validates :name, presence: true, uniqueness: true
end
