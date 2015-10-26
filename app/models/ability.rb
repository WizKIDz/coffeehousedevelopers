class Ability
  include CanCan::Ability
  def initialize(user)
    if user && user.admin?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :manage, :all             # allow superadmins to do anything
    else
      can :read, :all
      cannot :delete, :all
      cannot :update, :all
      cannot :create, :all
    end
  end
end
