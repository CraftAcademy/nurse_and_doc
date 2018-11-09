class PostPolicy
    attr_reader :region, :user
  
    def initialize(user, hospital)
      @user = user
      @hospital = hospital
    end
  
    def show?
      user.region.hospital(:region)?
    end
end