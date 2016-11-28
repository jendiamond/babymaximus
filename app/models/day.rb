class Day < ApplicationRecord
  has_many :feedings, dependent: :destroy 
  has_many :pumps, inverse_of: :day, dependent: :destroy 
  has_many :diapers, inverse_of: :day, dependent: :destroy 
  has_many :sleeps, inverse_of: :day, dependent: :destroy 
  has_many :tummy_times, inverse_of: :day, dependent: :destroy 
  has_one :bath, dependent: :destroy 
  accepts_nested_attributes_for :feedings
  accepts_nested_attributes_for :pumps
  accepts_nested_attributes_for :diapers
  accepts_nested_attributes_for :sleeps
  accepts_nested_attributes_for :tummy_times
  accepts_nested_attributes_for :bath
end
