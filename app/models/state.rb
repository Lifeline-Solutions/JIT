class State < ApplicationRecord
  belongs_to :donation
 before_create :add_state_counter


  def add_state_counter
    self.donation.state_counter += 1
    self.donation.save
  end

end
