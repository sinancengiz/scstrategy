class KingdomsController < ApplicationController
    before_action :set_kingdom, only: [:show, :update, :destroy]

    # GET /kingdoms
    def index
      @kingdoms = Kingdom.all
      json_response(@kingdoms)
    end
  
    # POST /kingdoms
    def create
      @kingdom = Kingdom.create!(Kingdom_params)
      json_response(@kingdom, :created)
    end
  
    # GET /kingdoms/:id
    def show
      json_response(@kingdom)
    end
  
    # PUT /kingdoms/:id
    def update
      @kingdom.update(kingdom_params)
      head :no_content
    end
  
    # DELETE /kingdoms/:id
    def destroy
      @kingdom.destroy
      head :no_content
    end
  
    private
  
    def kingdom_params
      # whitelist params
      params.permit(:name, :population)
    end
  
    def set_kingdom
      @kingdom = Kingdom.find(params[:id])
    end
end
