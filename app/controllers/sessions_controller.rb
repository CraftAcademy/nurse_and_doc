class SessionsController < Devise::SessionsController
    respond_to :js
  
    def new
    end
  
    def create
      self.resource = warden.authenticate(auth_options)
      if resource
        sign_in(resource_name, resource)
        flash[:notice] = 'Signed in successfully.'
        redirect_to root_path
      else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
      end
    end
  end
  