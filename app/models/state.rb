class State < ApplicationRecord
  validates_presence_of :name, :abbreviation, :min_age
end
