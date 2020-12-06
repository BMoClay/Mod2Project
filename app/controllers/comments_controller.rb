class CommentsController < ApplicationController

    # def index
    #     @comments = Comment.all
    # end

    # def show
    #     @comment = Comment.find(params[:id])
    # end

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.create(comment_params)
        redirect_to post_path(@comment.post)
    end

    def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)

        redirect_to comment_path(@comment)
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy

        redirect_to comments_path
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :post_id, :comment)
    end

end