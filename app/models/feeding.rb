class Feeding < ApplicationRecord
  belongs_to :day, class_name: "Day"
end
