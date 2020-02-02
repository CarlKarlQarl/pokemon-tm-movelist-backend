class PokemonsController < ApplicationController
    def index
        all_pokemon = Pokemon.all
        render json: { pokemons: all_pokemon }
    end

    def create
        @pokemon = Pokemon.create pokemon_params
        render json: { pokemon: @pokemon }
    end

    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        render json: { message: "Pokemon removed" }
    end

    private

    def pokemon_params
        params.require(:pokemon).permit([:name, :element, :level])
    end
end
