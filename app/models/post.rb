class Post < ApplicationRecord
  has_many :comments

  Post.all.each_with_index do |post, index|
    if index % 5 == 0
      if (post.title != "SPAM")
        Post.update(post.id, title: "SPAM", body: post.body)
      end
    end
  end

end
