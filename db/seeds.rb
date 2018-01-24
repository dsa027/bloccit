require File.expand_path("../../config/environment", __FILE__)
require_relative 'random_data'

  # Create Posts
  # 50.times do
  #   Post.create!(
  #     title:  RandomData.random_sentence,
  #     body:   RandomData.random_paragraph
  #   )
  # end
  # posts = Post.all
  #
  # # Create Comments
  # 100.times do
  #   Comment.create!(
  #     post: posts.sample,
  #     body: RandomData.random_paragraph
  #   )
  # end
  #
  # puts "Seed finished"
  # puts "#{Post.count} posts created"
  # puts "#{Comment.count} comments created"

  title = "Here is the new titled post"
  body = "And here's the body"
  cbody = "Comment for newly titled post"

  ret = Post.find_by title: title, body: body
  if !ret
    p "New post not found"
    Post.find_or_create_by! title: title, body: body
  else
    p "New post found"
  end

  ret = Comment.find_by body: cbody
  if !ret
    p "New comment not found"
    post = Post.find_by title: title, body: body
    Comment.find_or_create_by! body: cbody, post: post
  else
    p "New comment found"
  end
