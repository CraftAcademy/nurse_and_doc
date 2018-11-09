class PostPolicy
    attr_reader :region, :user
  
    def initialize(region, user)
      @region = region
      @user = user
    end
  
    def show?
      user.region?
    end
end