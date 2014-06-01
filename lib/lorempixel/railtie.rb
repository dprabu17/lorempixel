module Lorempixel
  class Railtie < Rails::Railtie
    initializer "lorempixel.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
