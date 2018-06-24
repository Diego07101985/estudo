module V2
  class V2 :: TodosController < ApplicationController
      def index
        todos = Todo.order('created_at DESC');
        
        @json = {status: 'SUCCESS', message:'Artigos carregados', data:todos},status: :ok
        json_response(json)
				render
			end
  end
end
