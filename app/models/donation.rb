class Donation < ApplicationRecord
  has_many :states, dependent: :destroy
  belongs_to :user
end
