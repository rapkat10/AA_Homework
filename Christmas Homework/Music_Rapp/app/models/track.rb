class Track < ApplicationRecord

    validates :name, :ord, :lyrics, :album_id presence: true



end
