class HomeController < ApplicationController
  def index
    render({ :template => "home/show_home.html.erb" })
  end
end
