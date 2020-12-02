class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
        @comment = Comment.find(params[:id])
        @comments = Comment.all
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create(post_params)

        if post.valid?
            # cookies[:user_id] = user.id
            redirect_to posts_path(post)
        else
            flash[:post_errors] = post.errors.full_messages
            redirect_to new_post_path
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)

        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to posts_path
    end

    private

    def post_params
        params.require(:post).permit(:user_id, :title, :content)
    end
end