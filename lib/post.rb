class Post
  attr_accessor :title, :author

  @@all = []


############### INSTANCE METHODS #############
  def initialize(title)
    @title = title
    @@all << self
  end


  def author_name
    self.author ? self.author.name : nil
  end

############# CLASS METHODS ###############
  def self.all
    @@all
  end
end
