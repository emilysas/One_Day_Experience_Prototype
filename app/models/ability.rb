class Ability
  include CanCan::Ability

  def initialize(professional)
    # Define abilities for the passed in professional here. For example:
    
    professional ||= Professional.new # guest professional (not logged in)


    if professional.admin?
      can :manage, :all
    else
      can :read, :all
    end
    

    # The first argument to `can` is the action you are giving the professional
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the professional can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the professional can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
