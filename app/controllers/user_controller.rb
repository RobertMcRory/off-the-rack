class UserController < ActionController
    
  def show
      @user = User.find(params[:id])
  end
    
  def 
      index @users = User.all
  end
  
  #protect_from_forgery with: :exception
  
  
  def admin_login
    flash[:notice]="Admin login successful"
  end
  
  
end
