require_relative 'random_data'

  def get_title
    title = RandomData.random_word(10)
    if title[79]
      title = title.truncate(77) + "..."
    end
    return title
  end

  5.times do
    pwd, count = '', 0
    while pwd.length < 6 && count < 100
      pwd = RandomData.random_word(3)
      count += 1
    end
    User.create!(
      name:     RandomData.random_name,
      email:    RandomData.random_email,
      password: pwd
    )
  end
  users = User.all
  user = User.first
  user.update_attributes!(
    email: 'dsa027@gmail.com',
    password: 'password'
  )

  # Create Topic
  15.times do
    name, count = '', 0
    while name.length < 5 && count < 100
      name = RandomData.random_name
      count += 1
    end
    Topic.create!(
      name:         name,
      description:  RandomData.random_paragraph
    )
    end
  topics = Topic.all

  # Create Posts
  50.times do
    Post.create!(
      user: users.sample,
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
  100.times do
    Comment.create!(
      post: posts.sample,
      body: RandomData.random_paragraph
    )
  end

  # Create Questions
  50.times do
    Question.create!(
      title: get_title,
      body: RandomData.random_paragraph,
      resolved: rand(0..1) == 0 ? false : true
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

  puts "Seed finished"
  puts "#{Topic.count} topics created"
  puts "#{User.count} users created"
  puts "#{Post.count} posts created"
  puts "#{SponsoredPost.count} sponsored posts created"
  puts "#{Comment.count} comments created"
  puts "#{Advertisement.count} advertisements created"
  puts "#{Question.count} questions created"
