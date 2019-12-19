class Cat < ApplicationRecord
    has_many :toys,
        foreign_key: :toyable_id,
        class_name: :Toy

end

# == Schema Information
#
# Table name: cats
#
#  id         :integer(8)      not null, primary key
#  name       :string          not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

