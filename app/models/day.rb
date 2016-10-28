class Day < ApplicationRecord
  has_many :feedings
  has_many :pumps
  has_many :diapers
  has_many :sleeps
  has_many :tummy_times
end
