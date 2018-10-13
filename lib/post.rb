
class Post 

  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  # is a class method that returns an array of all post instances that have been created
  def self.all 
    @@all
  end

  # knows the name of its author
  # returns nil if the post does not have an author
  def author_name
    if @author == nil
      return nil
    end
    @author.name
  end
end 