# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  code        :text
#  name        :text
#  description :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
    validates :code, uniqueness: true
    has_many :products
    belongs_to :category, :optional => true
end
