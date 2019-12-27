class Album < ApplicationRecord

    validates :name, :band_id, :year, presence: true


end
