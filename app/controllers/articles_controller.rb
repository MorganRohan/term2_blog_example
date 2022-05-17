class ArticlesController < ApplicationController
    def index
        @time = Time.now
        @article = Article.all
    end
end
