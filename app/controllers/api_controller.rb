class ApiController < ApplicationController


    def getInformationForState

        @information = Stateinformation.where("state =?",params[:state]).first

        render :json => @information

    end


    def getCitiesForState


        render :json => City.where("state =?",params[:state])

    end


    def getNeighborhoodsForCity


        render :json => Neighborhood.where("city =?",params[:city])
        
    end


    def populateinfo


        for state in State.all

            stateinformation = Stateinformation.new

            stateinformation.state = state.name
            stateinformation.asesinatos = rand(100..2000)
            stateinformation.robos = rand(100..2000)
            stateinformation.violaciones = rand(100..2000)
            stateinformation.maltrato_infantil = rand(100..2000)
            stateinformation.save

 
            
        end



        render :json => Stateinformation.all

    end

end
