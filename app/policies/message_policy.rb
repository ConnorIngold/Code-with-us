class MessagePolicy < ApplicationPolicy
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
    return true
  end

  def get_new_messages?
    true
  end
end
