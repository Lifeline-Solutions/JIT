class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.donor?
      can %w[read create update], user_id: user.id
    elsif user.receiver?
      can %w[read update], :all
    elsif user.beneficiary?
      can :read, :all
    end
  end
end
