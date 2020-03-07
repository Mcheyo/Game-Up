class AuthController < ApplicationController 

def fake_create 
    
    user=User.find_by(name: params["name"])
    if user && user.authenticate(params[:password])
    render json: user
    else 
        render json: { 
            message: "Incorrent Username/Password"
        }
    end 

end 

end 