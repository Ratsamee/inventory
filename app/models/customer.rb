# == Schema Information
#
# Table name: customers
#
#  id           :bigint           not null, primary key
#  first_name   :text
#  last_name    :text
#  address      :text
#  phone_number :text
#  email        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Customer < ApplicationRecord
    
end
