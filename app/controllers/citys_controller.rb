class CitysController < ApplicationController
    before_action :set_city, only: [:show, :update, :destroy]

    # GET /citys
    def index
      @citys = City.all
      json_response(@citys)
    end
  
    # POST /citys
    def create
      @city = City.create!(city_params)
      json_response(@city, :created)
    end
  
    # GET /citys/:id
    def show
      json_response(@city)
    end
  
    # PUT /citys/:id
    def update
      @city.update(city_params)
      head :no_content
    end
  
    # DELETE /citys/:id
    def destroy
      @city.destroy
      head :no_content
    end
  
    private
  
    def city_params
      # whitelist params
      params.permit(:title, :created_by)
    end
  
    def set_city
      @city = City.find(params[:id])
    end
end
