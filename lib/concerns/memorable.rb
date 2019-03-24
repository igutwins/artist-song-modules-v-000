module Memorable

  def initialize(name)
    self.class.all << name
  end

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

end
