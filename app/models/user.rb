class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  roles = %w[admin donor receiver beneficiary]
  roles.each do  |role_name|
    define_method "#{role_name}?" do
      self.role == role_name
    end
  end
end
