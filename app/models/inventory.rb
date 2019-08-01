# == Schema Information
#
# Table name: inventories
#
#  id            :bigint           not null, primary key
#  code          :text
#  received_date :date
#  product_id    :integer
#  cost          :float
#  rpp           :float
#  quantity      :integer
#  qty_on_hand   :integer
#  user_id       :integer
#  bin_location  :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Inventory < ApplicationRecord
    belongs_to :user
    belongs_to :product
    validates :code, :uniqueness => true
end
