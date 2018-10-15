class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.post_count
  	 self.all.length
  end

  def author_name
    author.name if author

    #binding.pry
  end


end