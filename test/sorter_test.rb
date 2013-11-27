require 'test_helper'

class SorterTest < ActiveSupport::TestCase
  class Sorted
    include CollectionSorter::Sorter

    sort_with :asc do |coll|
      coll.sort do |a,b|
        b[:v] > a[:v] ? -1 : b[:v] == a[:v] ? 0 : 1
      end
    end
  end

  test "should sort a collection" do
    @coll = [{v: 3}, {v: 1}, {v: 2}]
    assert_equal [{v: 1}, {v: 2}, {v: 3}], Sorted.new.apply_sort(@coll, :asc)
  end
end
