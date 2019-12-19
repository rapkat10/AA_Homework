class Toy < ApplicationRecord
  validates :name, uniqueness: { scope: [:toyable] }
  belongs_to :toyable, polymorphic: true
  
end

# == Schema Information
#
# Table name: toys
#
#  id           :integer(8)      not null, primary key
#  name         :string          not null
#  toyable_type :string
#  toyable_id   :integer(8)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

