class HomeController < ApplicationController
  sort_with :desc do |scope|
    scope.sort {|a,b| a.v > b.v}
  end

  def index
    @collection = apply_sort(collection)
    render json: @collection
  end

  private
  def collection
    @collection ||= [{v: 1}, {v: 2}, {v: 3}]
  end
end
