class AuthController < ApplicationController 

def fake_create 
    
    user=User.find_by(name: params["name"])
    if user
    render json: user
    else 
        render json: { 
            message: "Cant find a user with that username!"
        }
    end 

end 

end 