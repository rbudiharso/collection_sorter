require 'active_support'

module CollectionSorter
  module Sorter
    extend ActiveSupport::Concern

    included do
      class_eval do
        class_attribute :sorters
      end
    end

    module ClassMethods
      def sort_with(name, &block)
        self.sorters = self.sorters || {}
        self.sorters[name] = block
      end
    end

    def apply_sort(scope, default=nil)
      sorter = (request.params[:sort] rescue nil) || default || (return scope)
      sorter = default unless self.sorters.include?(sorter.to_sym)

      return self.sorters[sorter.to_sym].call(scope) if sorter.present?
      scope
    end
  end
end
