class ApplicationController < ActionController::Base

  before_action :set_active_storage_default_path


  private

  def set_active_storage_default_path
    ActiveStorage::Current.url_options = Rails.application.routes.default_url_options
  end
end
