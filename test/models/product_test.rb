# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  code        :text
#  name        :text
#  dimension   :text
#  style       :text
#  description :text
#  brand       :text
#  image       :text
#  category_id :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
