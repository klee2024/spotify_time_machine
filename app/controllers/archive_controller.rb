class ArchiveController < ApplicationController
  def index
    render({ :template => "/archive/index.html.erb" })
  end

  def show
    render({ :template => "/archive/show.html.erb" })
  end
end
