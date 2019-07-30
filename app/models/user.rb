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

class User < ApplicationRecord
    has_secure_password
    validates :email, :presence => true, :uniqueness => true
    has_many :inventories
end
