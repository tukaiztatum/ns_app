class Frito::PostsController < ApplicationController
  def index
    @posts = Post.find(:all)
  end

  def new
    @post = Frito::Post.new
  end

  def create
    @post = Frito::Post.new(params[:frito_post])
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @post = Frito::Post.find(params[:id])

  end

end
