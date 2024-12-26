class SellsController < ApplicationController
    def index
    end
    def new
        @sell = Sell.new
    end

    def create
        @sell = Sell.new(sell_params)

        if @sell.save
          # Redirect to the index page or the newly created sells
          redirect_to '/sells/new', notice: 'Sell was successfully created.'  # Ensure `sells_path` is used correctly
        else
          render :new
        end
    end


    private
        def sell_params
            params.require(:sell).permit!
        end
end
