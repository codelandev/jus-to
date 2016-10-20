class LegalCasePolicy < ApplicationPolicy
  def index?
    return false unless user
    user.is_a?(Agent) || user.profile.valid?
  end

  def show?
    return false unless user && record
    user.is_a?(Agent) ? record.agent == user : record.user == user
  end

  def new?
    return false unless user
    !user.is_a?(Agent) && user.profile.valid?
  end

  def create?
    new?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
