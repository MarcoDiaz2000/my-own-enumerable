# frozen_string_literal: true
require_relative 'mylist'
list = MyList.new(1, 2, 3, 4)
puts(list.replica_all? { |e| e < 5 })
puts(list.replica_all? { |e| e > 5 })
puts(list.replica_any? { |e| e == 2 })
puts(list.replica_any? { |e| e == 5 })
p(list.replica_filter(&:even?))
