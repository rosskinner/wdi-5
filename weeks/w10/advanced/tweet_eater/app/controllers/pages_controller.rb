class PagesController < ApplicationController
  def index
    @tweets = Tweet.pluck 'post'
  end
end
