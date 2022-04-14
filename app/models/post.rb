class Post < ApplicationRecord
    geocoded_by :address
    after_validation :geocode
    belongs_to :user, :optional => true
    belongs_to :status, :optional => true
    has_many :comments
    belongs_to :location, :optional => true

end