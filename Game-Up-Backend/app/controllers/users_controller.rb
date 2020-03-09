class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users 
    end 

    def show 
        user = User.find_by(id: params[:id])
        render json: user.to_json(include: {games: {only: [:id, :name, :background_image]}})
    end 

    def create 
        user = User.create(name: params["name"], profile:params["profile"], password:params["password"]) 
        
        if user.valid? 
        render json: user
        else 
           
         render json: {
           message:   user.errors.full_messages
         }
        end 
         
          
        
    end 

    def profile 
        
        token = request.headers["Authentication"]
        byebug
        user = User.find(decode(token)["id"])
        render json: user
    end 

end
