class ProductionsController < ApplicationController
    def index
        render json: Production.all
    end
    
    def show
        render json: Production.find(params[:id])
    end
    
end
