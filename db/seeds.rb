require_relative 'random_data'

  vote_count = 0

  5.times do
    User.create!(
      name:     RandomData.random_name,
      email:    RandomData.random_email,
      password: RandomData.random_password
    )
  end
  users = User.all
  admin = User.create!(
    name: 'David Alderson',
    email: 'dsa027@gmail.com',
    password: 'password',
    role: 'admin'
  )
  member = User.create!(
    name:     'Member User',
    email:    'member@example.com',
    password: 'helloworld'
  )

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
    post = Post.create!(
      user: users.sample,
      topic: topics.sample,
      title: RandomData.random_title,
      body:   RandomData.random_paragraph
    )
    post.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
    rand(1..15).times {
      post.votes.create!(value: [-1, 1].sample, user: users.sample)
      vote_count += 1
    }
  end
  posts = Post.all

  # Create SponsoredPost
  25.times do
    SponsoredPost.create!(
      topic: topics.sample,
      title: RandomData.random_title,
      body: RandomData.random_paragraph,
      price: sprintf("%02.2f", rand() * 1000)
    )
  end

  # Create Comments
  100.times do
    Comment.create!(
      user: users.sample,
      post: posts.sample,
      body: RandomData.random_paragraph
    )
  end

  # Create Questions
  50.times do
    Question.create!(
      title: RandomData.random_title,
      body: RandomData.random_paragraph,
      resolved: rand(0..1) == 0 ? false : true
    )
  end

  # Create Advertisements
  25.times do
    Advertisement.create!(
      title: RandomData.random_title,
      copy: RandomData.random_paragraph,
      price: sprintf("%02.2f", rand() * 1000)
    )
  end

  puts "Seed finished"
  puts "#{Topic.count} topics created"
  puts "#{User.count} users created"
  puts "#{Post.count} posts created"
  puts "#{vote_count} votes cast"
  puts "#{SponsoredPost.count} sponsored posts created"
  puts "#{Comment.count} comments created"
  puts "#{Advertisement.count} advertisements created"
  puts "#{Question.count} questions created"
