class RegionPolicy < ApplicationPolicy
  # attr_reader :region, :user

  def initialize(user, resource)
    @user = user
    @resource = resource
  end
  
  def index?
    @user.region?
    # binding.pry
    # user.region.hospital(:region)?
  end

end