module Dashboard
  class BaseController < ApplicationController
    before_action :require_login
    layout "dashboard"
  end
end
