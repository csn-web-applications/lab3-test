class PostsController < ApplicationController
  # переглянути список постів
  def index
    @posts = Post.all
  end

  # переглянути пост
  def show
    @post = Post.find(params[:id])
  end

  # створити пост
  def new # GET

  end

  def create # POST
    post = Post.create(title: params[:title])

    redirect_to post_path(post)
  end


  # змінити пост

  # видалити пост
end


# модифіковувати, додавати, видаляти, переглядати пост, переглядати список постів
