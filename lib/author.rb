require 'pry'

class Author 
  
  attr_reader :name, :posts 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(message)
    @posts << message
    @@all << message
    message.author = self
  end 
  
  def add_post_by_title(post_title)
    post_object = Post.new(post_title)
    self.add_post(post_object)
  end
  
  def self.post_count 
    @@all.length 
  end 
  
end 