class SellInsController < ApplicationController
    def index
        @trade_in = TradeIn.new
    end

    def new
        @trade_in = TradeIn.new(trade_in_params)  # Use `trade_in_params` instead of `message_params`

        if @trade_in.save
            redirect_to @trade_in, notice: 'Trade-in was successfully created.'  # Redirecting to the TradeIn show page (or wherever needed)
        else
            render :new
        end
    end
    

    def trade_in_params
        params.require(:trade_in).permit(:item_name, :price, :status)  # Adjust attributes based on your model
    end
end
