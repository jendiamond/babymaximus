class Bath < ApplicationRecord
  belongs_to :day, inverse_of: :bath
end
