module V2
    class AnimesController < ApplicationController
        def index
            @articles = [
            { id: 123, name: 'The Things' }
            ]
            json_response(@articles)
        end
    end
end
