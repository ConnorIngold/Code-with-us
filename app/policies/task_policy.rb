class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    return true
  end

  def update?
    return true
  end

  def destroy?
    record.user == user
  end

  def complete?
    true
  end

  def not_complete?
    true
  end
end
