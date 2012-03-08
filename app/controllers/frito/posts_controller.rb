class Frito::PostsController < ApplicationController
  def index
    @posts = Frito::Post.find(:all)
  end

  def show
    @post = Frito::Post.find(params[:id])
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

  def edit
    @post = Frito::Post.find(params[:id])
  end

  def update
    @post = Frito::Post.find(params[:id])
    respond_to do |format|
      if @post.update_attributes(params[:frito_post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @post = Frito::Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to frito_posts_url }
    end
  end

end
