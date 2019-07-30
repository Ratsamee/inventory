# == Schema Information
#
# Table name: inventories
#
#  id             :bigint           not null, primary key
#  code           :text
#  product_id     :integer
#  inventory_date :text
#  price          :float
#  quantity       :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
