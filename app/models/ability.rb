class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, User

    return unless user.present?

    can :manage, [Group, Purchase], author_id: User.id
  end
end
