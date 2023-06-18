class News < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :users, through: :reactions
end
