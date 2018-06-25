module V2
    class AnimesController < ApplicationController
        @@animais = {
        'cachorro' => {
          'especie': 'canina',
          'raca': 'mastiff'
        }, 
        
        'gato' => {
            'especie': 'felino',
            'raca': 'asinino'
        }
    }
        def index
            json_response(@@animais)
        end

        def show 
            @valor = @@animais[params[:slug]]
            json_response(@valor)
        end 
    end
end
