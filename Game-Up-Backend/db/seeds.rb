require 'rest-client'
require 'json'
require 'byebug'
# This file should contain all the record creation needed to seed the database with its default values.

# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
# User.destroy_all
# User_Game.destroy_all


def getGames
    all_games = RestClient.get('https://api.rawg.io/api/games?page=1&page_size=40') 
    game_hash = JSON.parse(all_games)
    
    game_hash["results"]

    # return game_hash
end 

def getGameDetail
    getGames.map do |game| 
    database_id = game["id"]    
    name = game["name"]
    released = game["released"]
    background_image = game["background_image"]
    rating = game["rating"]
    metacritic = game["metacritic"]
    playtime = game["playtime"]
    clip = game["clip"]["clip"]
    
    Game.find_or_create_by(database_id: database_id, name: name, released: released, background_image: background_image, rating: rating, metacritic: metacritic, playtime:playtime, clip:clip)



    end

end 

getGameDetail