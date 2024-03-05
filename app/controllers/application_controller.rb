class ApplicationController < ActionController::Base
  def set_link
    @link = Link.find_by_base62_code(params[:id])
  end
end
