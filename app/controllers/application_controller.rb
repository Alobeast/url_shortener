class ApplicationController < ActionController::Base
  include Pagy::Backend
  def set_link
    @link = Link.find_by_base62_code(params[:id])
  end
end
