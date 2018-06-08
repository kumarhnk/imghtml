class HomeController < ApplicationController
  require 'imgkit'

  def index
    
  end


  def proces

    kit =IMGKit.new(params[:url])
    img = kit.to_img
    # binding.pry
    rand_str  = rand(36**10).to_s(36)
    @img = rand_str + '.jpg'
    file = kit.to_file(Rails.root.join("public/#{rand_str}.jpg"))
    render 'home/index'

  end
end
