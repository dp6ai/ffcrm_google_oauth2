AuthenticationsController.class_eval do
  def callback
    auth_hash = request.env["omniauth.auth"]
    email = auth_hash[:info][:email]
    user = User.where(User.arel_table[:email].matches(email)).first
    if user 
      unless user.suspended?
        Authentication.create(user,true) # true - remember me
        redirect_to root_path, notice: "Welcome back #{user.name}"
      else 
        flash[:warning] = "Account with email #{email} is suspended."
        redirect_to login_path
      end  
    else 
      flash[:warning] = "User with email #{email} not found. Unable to login."
      redirect_to login_path
    end
  end
end
