class StaffcoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(region: @user.region)
    end
  end
end
