class CommentsController < ApplicationController

    def index
        @comments = Comment.all
    end

    def show
        @comment = Comment.find(params[:id])
    end

    def new
        @comment = Comment.new
    end

    def create
        comment = Comment.create(comment_params)
        # if comment.valid?
        #     redirect_to comment_path(comment)
        # else
        #     flash[:user_comment_errors] = comment.errors.full_messages
        #     redirect_to new_comment_path
        # end
    end

    private

    def comment_params
        params.require(:comment).permit(:comment)
    end

end