class PagesController < ApplicationController

  def home
  end

  def numbers
    @amount = 234
    @large_number = 12345678935
    @phone = 5556788907
  end

  def text
    @numbers = (1..20).to_a
    @person_count = 1
    @people_count = 2
    @story = "A long time ago in a galaxy far, far away"
  end

  def assets

  end

  def url
  end

end
