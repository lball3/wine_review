class LogEntry < ActiveRecord::Base
  RATINGS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  validates :name, :rating, :location, :tasted_on, presence: :true
  validates :rating, inclusion: { in: RATINGS }

  belongs_to :wine
end