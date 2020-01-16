class PokemonsController < ApplicationController
    def index
        all_pokemon = Pokemon.all
        render json: { pokemons: all_pokemon }
    end
end
