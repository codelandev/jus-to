class MessagePolicy < ApplicationPolicy
  def create?
    user && record.author && record.author == user
  end
end
