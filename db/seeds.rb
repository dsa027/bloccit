require_relative 'random_data'

  def get_title
    title = RandomData.random_sentence
    if title[79]
      title = title.truncate(77) + "..."
    end
    return title
  end

  # Create Topic
  15.times do
    Topic.create!(
      name:         RandomData.random_name,
      description:  RandomData.random_paragraph
    )
  end
  topics = Topic.all

  # Create Posts
  50.times do
    Post.create!(
      topic: topics.sample,
      title:  get_title,
      body:   RandomData.random_paragraph
    )
  end
  posts = Post.all

  # Create SponsoredPost
  25.times do
    SponsoredPost.create!(
      topic: topics.sample,
      title: get_title,
      body: RandomData.random_paragraph,
      price: sprintf("%02.2f", rand() * 1000)
    )
  end

  # Create Comments
  50.times do
    Comment.create!(
      post: posts.sample,
      body: RandomData.random_paragraph
    )
  end

  # Create Advertisements
  25.times do
    Advertisement.create!(
      title: get_title,
      copy: RandomData.random_paragraph,
      price: sprintf("%02.2f", rand() * 1000)
    )
  end

  # Create Questions
  100.times do
    Question.create!(
      title: get_title,
      body: RandomData.random_paragraph,
      resolved: rand(0..1) == 0 ? false : true
    )
  end

  puts "Seed finished"
  puts "#{Topic.count} topics created"
  puts "#{Post.count} posts created"
  puts "#{SponsoredPost.count} sponsored posts created"
  puts "#{Comment.count} comments created"
  puts "#{Advertisement.count} advertisements created"
  puts "#{Question.count} questions created"
