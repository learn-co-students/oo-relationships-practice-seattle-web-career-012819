class Show

  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.on_the_big_screen
    movie_titles = Movie.all.map{|movie| movie.title}
    show_titles = Show.all.map{|show| show.title}
    (movie_titles & show_titles)

  end

end
