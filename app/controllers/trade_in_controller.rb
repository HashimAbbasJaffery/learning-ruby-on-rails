class TradeInController < ApplicationController
    def new
        @trade_in = TradeIn.new
    end
    def create
        @trade_in = TradeIn.new(trade_in_params)

        if @trade_in.save
          # Redirect to the index page or the newly created trade_in
          redirect_to trade_ins_path, notice: 'Trade-in was successfully created.'  # Ensure `trade_ins_path` is used correctly
        else
          render :new
        end
    end

    private
        def trade_in_params
            params.require(:trade_in).permit!
        end
end
