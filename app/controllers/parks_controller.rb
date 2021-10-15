class ParksController < ApplicationController

    require 'rest-client'

    def index 
        url = "https://developer.nps.gov/api/v1/parks?parkCode=acad&api_key=thkeeIt0BOw7KPpCHjwoESUud4rkQAqtiVJSqVUh"
        response = RestClient.get(url)
        render json: response

    end

end
