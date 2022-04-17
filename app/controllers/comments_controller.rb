class CommentsController < ApplicationController
    def create
        comment = Comment.new comment_params
        comment.user = @current_user
        comment.save
        redirect_to post_path(comment.post_id)  
    end

    def edit
        @comment = Comment.find params[:id]
    end

    def update
        comment = Comment.find params[:id]
        comment.update comment_params
        redirect_to post_path(comment.post_id)
    end

    def user_comments
        user = User.find params[:id]
        @comments = user.comments
    end


    def destroy
        comment = Comment.find params[:id]
        comment.destroy
        redirect_to post_path(comment.post_id)
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :post_id)
    end

end