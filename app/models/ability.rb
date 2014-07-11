class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= Employee.new
    if user.admin?
      can :manage, :all
    elsif user.mostrador?
        alias_action :create, :read, :update, :delete, :to => :crud
        #enable model array when model become complete
        #request >> pedido
        #can :crud, [Order, Request, Ordernote, Orderdetail, Phone ]
        #can :read, [Employee, Product, Ingredient, Extra]
        #can :autocomplete_client_nombre, Client
        #can :find, [Order, Product, Ingredient, Extra]
        #next time add the code controls action in custom controller
    elsif user.mesera?
        alias_action :create, :read, :update, :to => :crud
        can :read, Product
        #can :crud, [Order, Orderdetail]
        #can :read, [Employee, Product, Ingredient, Extra]
        #can :find, [Order, Product, Ingredient, Extra]
        #next time add the code controls action in custom controller

    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
