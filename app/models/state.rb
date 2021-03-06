class State < ApplicationRecord
  validates_presence_of :name, :abbreviation, :min_age
  validates :name, uniqueness: true

  has_many :users
end
