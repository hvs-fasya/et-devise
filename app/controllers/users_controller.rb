class UsersController < ApplicationController

def index
	@users = User.all
end

def lock
	user = User.find(permitted_params[:id])
	user.lock_access!
	@users = User.all
	render :index
end

def unlock
	user = User.find(permitted_params[:id])
	user.unlock_access!
	@users = User.all
	render :index
end

private

def permitted_params
    params.permit(:id)
end

end
