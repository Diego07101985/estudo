module V2
    class ArticlesController < ApplicationController
        def index
            articles = Article.order('created_at DESC');
            render json: {status: 'SUCCESS', message:'Artigos carregados', data:articles},status: :ok
        end
    end
end
