class PostPolicy < ApplicationPolicy
    # attr_reader :region, :user
  
    # def initialize(user, resource)
    #   @user = user
    #   @resource = resource
    # end
  
    def show?
      binding.pry
      # user.region.hospital(:region)?
    end
end