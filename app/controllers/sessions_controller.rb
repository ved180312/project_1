class SessionsController < ApplicationController
  # before_action: authenticate_user
  
   def new
    end
    
    def create

        # @user = User.find_by(email: params[:session][:email].downcase)
        # debugger
        # if @user && @user.authenticate(params[:session][:password])
        #   session[:user_id] = user.id
        #   flash[:notice] = "Logged in successfully"
        #   redirect_to user
        # else
        #   flash.now[:alert] = "There was something wrong with your login details"
        #   render 'new', status: :unprocessable_entity
        # end
        @user=User.new
    user = User.find_by(email: params[:session][:email].downcase)
    # debugger
    if user && user.authenticate(params[:session][:password])   
         flash[:notice]="Loged in sucessfully"
      redirect_to user
    else
      flash.now[:alert]="Wrong id or password"
      render :new, status: :unprocessable_entity
    end
      end
    
    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to users_path
      
      end



end
