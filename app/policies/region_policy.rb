class RegionPolicy < ApplicationPolicy
  class Scope
  attr_reader :user, :scope

  def initialize(user, scope)
    @user = user
    @scope = scope
  end
  
  def resolve
    if user.region?
      scope.all
    end
  end
  def index?
   @user.region?
  #   # binding.pry
  #   # user.region.hospital(:region)?
   end

end