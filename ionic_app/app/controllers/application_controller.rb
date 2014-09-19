class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def cor
    headers["Access-Control-Allow-Origin"] = "*"
    headers["Access-Control-Allow-Methods"] = %w{GET POST PUT DELETE OPTIONS}.join(",")
    headers["Access-Control-Allow-Headers"] = %w{Origin Accept Content-Type Authorization X-Requested-With X-XSRF-TOKEN X-CSRF-TOKEN x-xsrf-token x-csrf-token}.join(",")
    head(:ok) if request.request_method == "OPTIONS"
  end
end
