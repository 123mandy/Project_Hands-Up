class Post < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :status, :optional => true
    has_many :comments
end