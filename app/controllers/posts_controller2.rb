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
    post = Post.new(title: params[:title])

    if post.save
      flash[:success] = "Пост успішно створений"
      redirect_to post_path(post)
    else
      flash[:error] = post.errors.full_messages[0]
      redirect_to new_post_path
    end
  end


  # змінити пост
  def edit # GET

  end

  def update
    post = Post.find(params[:id])

    post.update(title: params[:title])

    redirect_to post_path(post)
  end

  # видалити пост
end


# модифіковувати, додавати, видаляти, переглядати пост, переглядати список постів
