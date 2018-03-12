class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
     return true
  end

  def update?
    record.owner == user
  end

  def destroy?
    record.owner == user
  end

  def closed?
    true
  end

  def open?
    true
  end

  def private?
    true
  end

  def public?
    true
  end
end
