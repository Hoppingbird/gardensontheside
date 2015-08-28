class ToolsController < ApplicationController


  def index
    @zips = Zip.all
  end

  def show
    #@zip = Zip.find(params{:id})
  end

  def new
    #@zip =Zip.new
  end
end
