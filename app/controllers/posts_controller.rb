class PostsController < ApplicationController
  def index
    @posts = Post.all

    Post.all.each_with_index do |post, index|
      if index % 5 == 0
        if (post.title != "SPAM")
          Post.update(post.id, title: "SPAM", body: post.body)
        end
      end
    end

  end

  def show
  end

  def new
  end

  def edit
  end
end
