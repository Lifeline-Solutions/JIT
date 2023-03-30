class State < ApplicationRecord
  belongs_to :donation
  before_create :add_state_counter

  def add_state_counter
    donation.state_counter += 1
    donation.save
  end
end
