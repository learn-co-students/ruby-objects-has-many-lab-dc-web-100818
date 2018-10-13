require 'pry'

class Post 
  
  attr_accessor :author
  attr_reader :title
  
  @@all = []
  
  def initialize(post)
    @title = post
    @author = nil
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def author_name
    if self.author == nil 
      nil 
    else 
      self.author.name
    end 
  end 
  
end 