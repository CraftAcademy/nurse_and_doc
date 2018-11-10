class ApplicationPolicy
  attr_reader :region, :user

   def initialize(region, user)
    @region = region
    @user = user
  end

  def index?
    true
    # user.admin? or not region.published?
  end

end