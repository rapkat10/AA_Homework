class Sub < ApplicationRecord

    validates :description, :name, presence: true
    validates :name, uniqueness: true

    has_many :post_subs, inverse_of: :sub, dependent: :destroy

    has_many :posts, through: :post_subs, source: :post

    belongs_to :owner,
        class_name: :User,
        foreign_key: :owner_id,
        inverse_of: :subs

end

# == Schema Information
#
# Table name: subs
#
#  id          :integer(8)      not null, primary key
#  owner_id    :integer(4)      not null
#  name        :string          not null
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

