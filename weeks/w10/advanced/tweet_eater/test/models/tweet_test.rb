# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  post       :text
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
