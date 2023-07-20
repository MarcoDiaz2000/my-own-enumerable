module MyEnumerable
  def replica_all?
    each do |element|
      return false unless yield(element)
    end
    true
  end

  def replica_any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  def replica_filter
    result = []
    each do |element|
      result << element if yield(element)
    end
    result
  end
end
