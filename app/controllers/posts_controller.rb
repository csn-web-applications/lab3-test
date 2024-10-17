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

  # змінити пост

  # видалити пост
end


# модифіковувати, додавати, видаляти, переглядати пост, переглядати список постів
