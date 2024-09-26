class CountyAbility
  include CanCan::Ability

  def initialize(user)
    can [:index, :read, :create, :update, :delete], Spree::County
  end
end
