class Band < ApplicationRecord

    validates :name, presence: true, uniqueness: true

    has_many :albums, dependent: :destroy,
        foreign_key: :band_id,
        class_name: :Album

end

# == Schema Information
#
# Table name: bands
#
#  id         :integer(8)      not null, primary key
#  name       :string          not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

