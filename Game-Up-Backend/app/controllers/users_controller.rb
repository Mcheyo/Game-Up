class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users 
    end 

    def show 
        user = User.find_by(id: params[:id])
        render json: user.to_json(include: {games: {only: [:name, :background_image]}})
    end 

    def create 
        user = User.create(params.require(:user).permit!)
        
        if user.valid? 
        render json: user
        else 
           
         render json: {
           message:   user.errors.full_messages
         }
        end 
         
          
        
    end 

    def profile 
    end 

end
