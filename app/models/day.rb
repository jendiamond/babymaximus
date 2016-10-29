class Day < ApplicationRecord
  has_many :feedings, dependent: :destroy 
  has_many :pumps, dependent: :destroy 
  has_many :diapers, dependent: :destroy 
  has_many :sleeps, dependent: :destroy 
  has_many :tummy_times, dependent: :destroy 
  has_many :baths, dependent: :destroy 
  accepts_nested_attributes_for :feedings
  accepts_nested_attributes_for :pumps
  accepts_nested_attributes_for :diapers
  accepts_nested_attributes_for :sleeps
  accepts_nested_attributes_for :tummy_times
  accepts_nested_attributes_for :baths
end
