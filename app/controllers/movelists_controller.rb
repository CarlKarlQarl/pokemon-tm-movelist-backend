class MovelistsController < ApplicationController
    def index
        movelists = Movelist.all
        render json: movelists
    end
end
