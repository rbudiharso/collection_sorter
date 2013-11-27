module CollectionSorter
  class Railtie < Rails::Railtie
    ActiveSupport.on_load :action_controller do
      include CollectionSorter::Sorter
    end
  end
end
