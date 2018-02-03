class FavoriteMailer < ApplicationMailer
  default from: "dsa027@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@bloccit.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccit.com>"
    headers["References"] = "<post/#{post.id}@bloccit.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
    mail(to: post.user.email, subject: "New comment on your post: #{post.title}")
  end

  def new_post(user, post)
    headers["Message-ID"] = "<post/#{post.id}@bloccit.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@bloccit.com>"
    headers["References"] = "<post/#{post.id}@bloccit.com>"

    @user = user
    @post = post

    mail(to: user.email, subject: "Your new post: #{post.title}")
  end
end
