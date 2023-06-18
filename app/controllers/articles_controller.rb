class ArticlesController < ApplicationController
    def show
        @comment = Comment.new
    end
end