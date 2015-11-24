class Bookmark

  attr_reader :url, :title
  attr_writer :url, :title
  def initialize(url, title)
    @url = url
    @title = title
  end

  def visit
    @last_visited = Time.now
  end

  attr_reader :last_visited

end