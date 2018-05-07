---
title: Bloccit
summary: A Web-based, Reddit-like SPA written in Rails
tech: Rails, TDD with RSpec, Ruby, JavaScript, Bootstrap, HTML/CSS, Heroku, and GitHub
---
[1]: https://whispering-tor-51678.herokuapp.com/
[Heroku Site][1]

# Summary

  A Reddit-like Creator written with Rails

# Explanation

  Bloccit is a social, Reddit-like site.

  From the front page, the hero banner asks you to sign up for an account. You may also sign in from here if you already have an account. You may use this application without an account, but you'll only be able to view content.

  The navigation bar on the top left of every page allows you to access the home page (Bloccit), Topics, Advertisements, Questions, and About.

  A topic is text on a certain...topic, which is at the top of the topic->posts->comments hierarchy. The topics page shows a lit of all current topics, with the topic title and full topic being shown (not snippets). When you click on a topic's title, you go to the topic viewing page, which again shows the full topic text, and just below, posts from users about the topic. Below all posts are Sponsored posts that can't be rated. If you're an administrator, you can Edit Topic, Delete Topic, and New Sponsored Post. Regular users can create a New Post.

  Posts may be up-voted and down-voted and the number of up-votes minus down-votes is also shown. The posts are shown in a list with a title, when the post was submitted, and how many comments there are for each post (the post itself may be commented on, but comments aren't rated like posts are). The post page shows the post title, when the post was submitted and the post's text. Below the post are a list of comments and at the bottom is an input field and submit button to make a comment. Posts may be edited or deleted from here if you are the owner or an administrator. You may also favorite the post from here.

  Advertisements and Questions are currently stand-alone and have no effect on the application yet.

  The application is generally broken down by
  - Welcome: Home
  - Advertisements: Currently standalone, shows ad text from db
  - Comments: Comments on posts under a topic
  - Favorites: Favorite a post
  - Posts: Post on a topic
  - Questions: Currently standalone, shows questions from db
  - Sessions: Authentication and authorization
  - Sponsored Posts: Show sponsored posts under user posts
  - Topics: The top level of topics->posts->comments
  - Users: The users that sign up to post and comment
  - Votes: Tracks upvotes and downvotes

# Problem

  This application is the first Rails application, Bloccit being the first. This application is fairly complex and takes advantage of several technologies listed below.

# Solution

  This project shows the practical application of several technologies:
  - Rails
    - The entire application is written in Rails. Controllers, Helpers, Models, Views, and Sqlite3/Postgresql for dev/prod are used.
  - TDD with RSpec: this application makes extensive and thorough use of the Rails spec runner testing facility.
  - Ruby
  - JavaScript: sparsely used
  - Bootstrap
  - HTML/CSS
  - Heroku
  - GitHub

# Results

  There are minor bugs to still fix and some enhancements would make the app even better.

# Conclusion
  I cut my teeth in Ruby and Rails on this project and learned a huge amount.

  ToDos
  - Integrate Advertisements and Questions
