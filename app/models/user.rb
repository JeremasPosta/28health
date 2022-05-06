class User < ApplicationRecord
  validates_presence_of :full_name, :email, :date_of_birth, :state_id
  validates_format_of :email, with: %r(.+@.+\..+)
end
