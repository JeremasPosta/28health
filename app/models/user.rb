class User < ApplicationRecord
  validates_presence_of :full_name, :email, :date_of_birth, :state
  validates_format_of :email, with: %r(.+@.+\..+)
  validates :email, uniqueness: true

  belongs_to :state
end
