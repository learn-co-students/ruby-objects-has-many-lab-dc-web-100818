require 'pry'

class Post
  attr_accessor :title, :all, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author.nil? #checking to see if the post has an author name, will return true or false.
      return nil #returning nil as a result
    else
      self.author.name
    end
  end

end
