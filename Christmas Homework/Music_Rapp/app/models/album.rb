class Album < ApplicationRecord

    validates :name, :year, presence: true
    validates :live, inclusion: { in: [true, false] }
    validates :name, uniqueness: { scope: :band_id }
    validates :year, numericality: { minimum: 1900, maximum: 9000 }

    after_initialize :set_defaults

    belongs_to :band,
        foreign_key: :band_id,
        class_name: :Band

    has_many :tracks, dependent: :destroy,
        foreign_key: :album_id,
        class_name: :Album


    def set_defaults
        self.live ||= false
    end

end

# == Schema Information
#
# Table name: albums
#
#  id         :integer(8)      not null, primary key
#  name       :string          not null
#  band_id    :integer(4)      not null
#  year       :integer(4)      not null
#  live       :boolean         default("false"), not null
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

