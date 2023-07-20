module MyEnumerable
  def all?()
    each { |item| return false unless yield(item) } if block_given?
    true
  end

  def any?()
    each { |item| return true if yield(item) } if block_given?
    false
  end

  def filter()
    result = []
    each { |item| result << item if yield(item) } if block_given?
    result
  end
end
