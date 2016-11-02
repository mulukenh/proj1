class PokemonsController < ApplicationController
	def capture
		@pokemons = Pokemon.find(params[:id])
		@pokemons.update_attributes!(:trainer => current_trainer)
		redirect_to :root
	end
end