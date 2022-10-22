class Timeslot < ApplicationRecord
  # Слот пренадлежит фильму
  belongs_to :movie

  # Слот пренадлежит залу
  belongs_to :hall

  # Валидация обязательных аттрибутов
  validates :start_time, :end_time, :hall, :movie, presence: true

  # Валидация слота времени
  validate do |record|
    if record.start_time >= record.end_time
      errors.add(:base, 'Start time can not be greater than or equal to End time')
    end

    if record.end_time <= record.start_time
      errors.add(:base, 'End time can not be less than or equal to Start time')
    end
  end
end
