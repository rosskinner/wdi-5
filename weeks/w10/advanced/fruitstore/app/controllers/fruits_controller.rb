class FruitsController < ApplicationController
  def index
    @fruits = Fruit.order('created_at DESC')
    respond_to do |format|
      format.html{}
      format.json { render :json => @fruits }
    end
  end

  def show
    @fruits = Fruit.all
    @fruit = @fruits.find_by [:id]
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.new(:name => params[:name])
    if @fruit.save
      redirect_to @fruit
    else
      render :new
    end
  end
end
