class ChargesController < ApplicationController
    def index
      render json: Charge.all
    end
    def show
        render json: Charge.find(params[:id])
    end
end
