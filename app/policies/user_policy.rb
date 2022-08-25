class UserPolicy < ApplicationPolicy
  def show?
    record == user || !record.politician
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
