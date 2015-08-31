require 'rest-client'

class ToolsController < ApplicationController



  def index
    if(params[:zip])
      @zip = RestClient.get(build_uri(params[:zip]))
    end

  end

  def show
    #@zip = Zip.find(params{:id})
  end

  def new
    #@zip =Zip.new
  end

  def build_uri(zip)
    request_uri = 'http://planthardiness.ars.usda.gov/PHZMWeb/ZipProxy.ashx?ZipCode='
    "#{request_uri}#{zip}"
  end
end
