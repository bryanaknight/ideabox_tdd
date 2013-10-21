class Idea
  attr_reader :rank
  attr_accessor  :id, :title, :description
  include Comparable

  def initialize(title, description)
    @title       = title
    @description = description
    @rank        = 0
    @id          = id
  end

  def like!
    @rank += 1
  end

  def <=>(other)
    rank <=> other.rank
  end

end
