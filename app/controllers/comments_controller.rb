class CommentsController < ApplicationController
    def create
        @news = News.find(params[:comment][:news_id])
        @comment = Comment.new(comment_params)
        @comment.user = current_user
        respond_to do |format|
            if @comment.save
                format.html { redirect_to news_path(@news.id), notice: 'El comentario fue agregado correctamente.' }
            else
                format.html { redirect_to news_path(@news.id), notice: 'El comentario no pudo ser agregado.' }
            end
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :news_id)
    end

end
