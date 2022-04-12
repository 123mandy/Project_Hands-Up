class CommentsController < ApplicationController
    def create
        comment = Comment.new comment_params
        comment.user = @current_user
        comment.save
        redirect_to post_path(comment.post_id)  
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :post_id)
    end

end