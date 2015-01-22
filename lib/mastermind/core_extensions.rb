class Array
  def all_same?
    self.all? { |e| e == self[0] }
  end
end
