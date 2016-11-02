class PokemonsController < ApplicationController
	def capture
		@pokemons = Pokemon.find(params[:id])
		@pokemons.update_attributes!(:trainer => current_trainer)
		redirect_to :root
	end

	def damage
		@pokemons = Pokemon.find(params[:id])
		@pokemons.update_attributes!(:health => (@pokemons.health - 10))
		if @pokemons.health < 0
			@pokemons.destroy
		end
		redirect_to trainer_path(current_trainer)
	end
end