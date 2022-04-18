class CommentsController < ApplicationController
    def create
        comment = Comment.new comment_params
        comment.user = @current_user
        comment.save
        flash[:comment]= "Thanks for your comment 💬"
        redirect_to post_path(comment.post_id)  
    end

    def edit
        @comment = Comment.find params[:id]
    end

    def update
        comment = Comment.find params[:id]
        comment.update comment_params
        flash[:edit_comment]= "Thanks for updating your comment 🖊️"
        redirect_to post_path(comment.post_id)
    end

    def user_comments
        user = User.find params[:id]
        @comments = user.comments
    end


    def destroy
        comment = Comment.find params[:id]
        comment.destroy
        flash[:delete_comment]= "Your comment has be deleted ❌"
        redirect_to post_path(comment.post_id)
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :post_id)
    end

end