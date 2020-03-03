class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users 
    end 

    def show 
        user = User.find_by(id: params[:id])
        render json: user.to_json(include: {games: {only: [:name]}})
    end 

    def create 
        user = User.create(params.require(:user).permit!)
        render json: user
    end 

    def profile 
    end 

end
