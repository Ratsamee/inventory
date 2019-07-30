# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  first_name      :text
#  last_name       :text
#  email           :text
#  admin           :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
