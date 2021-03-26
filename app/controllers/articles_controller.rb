class ArticlesController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    def show
       # byebug
        @article =Article.find(params[:id])
    end

    def edit
    end

    def update
    end

    def destroy
    end
end