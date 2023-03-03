class CurrentController < ApplicationController
  def index
    render({ :template => "current/index.html.erb" })
  end
end
