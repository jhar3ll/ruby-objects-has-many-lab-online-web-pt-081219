class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def posts
   Posts.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end
end