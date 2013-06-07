# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  account_id   :integer
#  account_type :string(255)
#  slug         :string(255)
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
