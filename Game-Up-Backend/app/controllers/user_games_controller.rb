class UserGamesController < ApplicationController
  
    def index 
        user_games = UserGame.all 
        render json: user_games
    end 

    def show 
        user_game = UserGame.find_by(id: params[:id])
        render json: user_game
    end 

    def create 
        user_game = UserGame.create(params.require(:user_game).permit!)
        render json: user_game
    end 

    def destroy 
    user_game = UserGame.find_by(user_id: params[:user_id], game_id: params[:game_id])
    byebug
    user_game.destroy
    end 


end
