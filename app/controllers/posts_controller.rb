class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

#altered version of create method - testing out something
    # def create
    #     @post = Post.create(post_params)
    #     if @post.valid?
    #         redirect_to post_path(post)
    #     else
    #         flash[:post_errors] = @post.errors.full_messages
    #         redirect_to new_post_path
    #     end
    # end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post.user
        else
            flash[:errors] = @post.errors.full_messages
            render 'new'
        end
    end

    private

    def post_params
        params.require(:post).permit(:user_id, :title, :content)
    end
end