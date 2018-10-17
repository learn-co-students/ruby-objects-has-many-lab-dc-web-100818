class Author

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		self.class.all << self
	end

	def self.all
		@@all
	end

	def posts
		Post.all.select{|post| post.author == self}
	end

	def add_post(post)
		post.author = self
	end

	def add_post_by_title(title)
		post_title = Post.new(title)
		post_title.author = self
	end

	def self.post_count
		# binding.pry
		Post.all.length
	end

end
