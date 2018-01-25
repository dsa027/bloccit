require_relative 'random_data'

  def get_title
    title = RandomData.random_sentence
    if title[79]
      title = title.truncate(77) + "..."
    end
    return title
  end

  # Create Posts
  50.times do
    Post.create!(
      title:  get_title,
      body:   RandomData.random_paragraph
    )
  end
  posts = Post.all

  # Create Comments
  100.times do
    Comment.create!(
      post: posts.sample,
      body: RandomData.random_paragraph
    )
  end

  # Create Advertisements
  100.times do
    Advertisement.create!(
      title: get_title,
      copy: RandomData.random_paragraph,
      price: sprintf("%02.2f", rand() * 1000)
    )
  end

  puts "Seed finished"
  puts "#{Post.count} posts created"
  puts "#{Comment.count} comments created"
  puts "#{Advertisement.count} advertisements created"
