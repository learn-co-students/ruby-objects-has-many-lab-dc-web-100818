
class Author 
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  # has many posts
  def posts
    @posts
  end

  # takes in an argument of a post
  # associates that post with the author by telling the post that it belongs to that author
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  # takes in an argument of a post title
  # creates a new post with it and associates the post and author
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  # is a class method
  # returns the total number of posts associated to all existing authors
  def self.post_count
    @@post_count
  end


end