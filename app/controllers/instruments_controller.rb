class InstrumentsController < ApplicationController
   
    def index
        @instruments = Instrument.all
    end
    
    def show
        @instrument = Instrument.find(params[:id])
    end
    
    def new
        @instrument = Instrument.new
    end
    
    def create
        @instrument = Instrument.create(instrument_params)
        redirect_to Instrument_path(@instrument)
    end
    
    private
    
    def instrument_paramts
        params.require(:instrument).permit(:name, :classification)
    end
end
