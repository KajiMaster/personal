class Post
  attr_writer :title

  def self.author
    "Jimmy"
  end

  def full_title
    ### this one won't work ###
    # "#{@title} by #{class.author}"

    "#{@title} by #{self.class.author}"
  end
end

pst = Post.new
pst.title = "Delicious Ham"
puts pst.full_title