class DogsController < ApplicationController
  def index
  end

  def new
  end

  def faq
    #render a view from a different controller
    render '/pages/faq'
  end
end