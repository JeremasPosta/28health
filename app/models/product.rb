class Product < ApplicationRecord
  validates_format_of :ndc, with: %r([0-9]+(-[0-9]+)+)
  validates_presence_of :name, :ndc, :category
  validates :ndc, uniqueness: true

  belongs_to :category
  has_and_belongs_to_many :users
end
