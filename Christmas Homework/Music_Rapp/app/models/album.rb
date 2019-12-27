class Album < ApplicationRecord

    validates :name, :band_id, presence: true


end
