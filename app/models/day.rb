class Day < ApplicationRecord
  has_many :feedings
  has_many :pumps
  has_many :diapers
  has_many :sleeps
  has_many :tummy_times
  has_many :baths
  accepts_nested_attributes_for :feedings
  accepts_nested_attributes_for :pumps
  accepts_nested_attributes_for :diapers
  accepts_nested_attributes_for :sleeps
  accepts_nested_attributes_for :tummy_times
  accepts_nested_attributes_for :baths
end
