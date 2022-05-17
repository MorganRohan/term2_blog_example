class ArticlesController < ApplicationController
    def index
        @time = Time.now
        @article = Article.all

        console
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new

        console
    end

    def create
        @article = Article.new(article_params)
        if @article.save
          redirect_to articles_path
        else
            render :new
        end
    end

    private
        def article_params
            params.require(:article).permit(:page, :paragraph, :rank)
        end
end
