class TechnicalMachinesController < ApplicationController
    def index
        tms = TechnicalMachine.all
        render json: tms
    end
end
