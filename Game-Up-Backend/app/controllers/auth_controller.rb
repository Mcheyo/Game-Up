class AuthController < ApplicationController 

def fake_create 
    
    user=User.find_by(name: params["name"])
    
    render json: user

end 

end 