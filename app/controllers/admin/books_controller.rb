module Admin
  class BooksController < Admin::ApplicationController
    def scoped_resource
      resource_class.with_attached_images
    end
  end
end
