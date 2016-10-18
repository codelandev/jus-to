class LegalCasePolicy < ApplicationPolicy
  def index?
    user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
